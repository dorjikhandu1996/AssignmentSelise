class Product < ApplicationRecord
    has_many :order_items, dependent: :destroy
    has_many :discounts
    validates: name, presence: true
end
