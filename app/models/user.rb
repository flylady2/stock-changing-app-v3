class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :username, :email, :password
  has_many :stock_boxes
  has_many :stocks, through: :stock_boxes

end
