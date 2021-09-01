class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #scope.all
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
    record.user == user
  end

  def destroy?
    record.user == user
  end


end
