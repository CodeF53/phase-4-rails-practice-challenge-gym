class ClientSerializer < ActiveModel::Serializer
  attributes :name, :age, :membership_total
  
  def membership_total
    object.memberships.sum(&:charge)
  end
end
