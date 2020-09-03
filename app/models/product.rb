class Product < ApplicationRecord
  validates :product_name, uniqueness: { case_sensitive: false }
  validates_length_of :product_name, minimum: 5, maximum: 10
   validates :product_name, :description, :price, presence: true
  belongs_to :user


end
