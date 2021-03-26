class Product < ApplicationRecord
    has_many :discounts, dependent: :destroy
    has_many :order_items, dependent: :destroy
end
