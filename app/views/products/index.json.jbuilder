json.array! @products do |product|
  json.extract! product, :id, :name, :price, :description, :supplier_id

  json.images product.images.map { |image| { id: image.id, url: image.url } }
end
