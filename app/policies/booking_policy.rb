class BookingPolicy < ApplicationPolicy
  # Le cas 'index' n'est pas à couvrir
  # class Scope < Scope
  #   def resolve
  #     scope.all
  #   end
  # end

  def new?
    true
  end

  def create?
    new?
  end

  def destroy?
    record.user == user
  end

  def update?
    destroy?
  end

  def edit?
    destroy?
  end

  def show?
    destroy?
  end

  def accept?
    true
  end

  def declined?
    true
  end

end
