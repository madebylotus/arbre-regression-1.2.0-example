class Order < ApplicationRecord
  has_many :payments, inverse_of: :order, class_name: Orders::Payment.name, dependent: :destroy

  accepts_nested_attributes_for :payments
end
