class Orders::Payment < ApplicationRecord
  belongs_to :order, inverse_of: :payments, required: true
end
