class BikePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def show?
    return true
  end

  def destroy?
    user_is_owner_or_admin?
  end

  def update?
    user_is_owner_or_admin?
  end

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
