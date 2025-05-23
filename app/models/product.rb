class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
end
#   validates :name, presence: true
#   validates :price, uniqueness: true
#   validates :description, length: { minimum: 8 }

#   def name
#     "#{name}"
#   end

#   def friendly_created_at
#     created_at.strftime("%A, %d, %b, %Y, %l:%M %p")
#   end

#   def is_discounted?
#     if price <= 10
#       true
#     else
#       false
#     end
#   end

#   def tax
#     price * 0.09
#   end
# end