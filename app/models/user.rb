class User < ApplicationRecord
  has_secure_password
  has_many :orders

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end

  validates :name, :presence => true

  validates :email, :presence => true

  validates :password, :presence => true,
                   :confirmation => true,
                   :length => {:within => 6..40}

end
