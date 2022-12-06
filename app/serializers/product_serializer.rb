class ProductSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :name, :description, :price, :quantity
end
