class ListPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def new?
    true
  end

  def show?
    # record.user_id == user
    true
  end

  def create?
    true
  end

  def destroy?
    record.user_id == user
  end
end
