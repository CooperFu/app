class User < ActiveRecord::Base
  validates :phone, :email, uniqueness: true, allow_blank: true
  validates :name, length: { minimum: 1, maximum: 20 }
  validates :email, length: { minimum: 3, maximum: 20 }
end
