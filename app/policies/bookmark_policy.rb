class BookmarkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.user_id == user
  end

  def destroy?
    record.user_id == user.id
  end
end
