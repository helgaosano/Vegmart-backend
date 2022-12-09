class Consumer < ApplicationRecord
    
    has_many :carts
    has_many :products, through: :carts
    has_secure_password
    validates :email_address, presence: true, uniqueness: true
end
