class User < ApplicationRecord

  scope :search, lambda{|query| where(["first_name LIKE ?", "%#{query}%"])}

end
