class User < ApplicationRecord

  scope :search_by_name, lambda{|query| where(["first_name LIKE ?", "%#{query}%"])}

end
