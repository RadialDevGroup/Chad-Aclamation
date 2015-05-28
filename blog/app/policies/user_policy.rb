class UserPolicy < ApplicationPolicy
  attr_reader :user, :scope

  def initialize(user, scope)
    @user   = user
    @scope  = scope
  end

  def edit_role?
    user.admin?
  end

  def update?
    user.admin?
  end
end
