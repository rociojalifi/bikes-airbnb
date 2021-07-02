class ReviewPolicy < ApplicationPolicy

  def create?
    return true
  end

  def destroy?
    return true
  end
end
