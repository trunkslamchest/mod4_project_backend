class CartItemsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :item, :user
end
