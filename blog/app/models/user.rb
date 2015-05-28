class User < ActiveRecord::Base
  attr_accessor :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_uniqueness_of :username
  validates_presence_of :username
  validates :username, length: { in: 4..16 }

  enum role: [:admin, :editor, :user]
  after_initialize :set_default_role, :if => :new_record?

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      q_string = "lower(username) = :value OR lower(email) = :value"
      where(conditions).where([q_string, {:value => login.downcase}]).first
    else
      where(conditions).first
    end
  end

  def set_default_role
    self.role ||= :user
  end

  def self.rolemap
    roles.keys.map {|role| [role.humanize, role] }
  end
end
