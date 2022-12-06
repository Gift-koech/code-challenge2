class IndividualRestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :pizzas
end
