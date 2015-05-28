class UserPolicy < ApplicationPolicy
  attr_reader :user, :scope

  def initialize(user, scope)
    @user   = user
    @scope  = scope
  end

  def edit_role?
    user.admin?
  end

  def identity? target_user
    target_user.id == @user.id
  end

  def update?
    user.admin?
  end
end
