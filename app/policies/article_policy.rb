class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end

  def owner?
    record.user == user
  end
end
