class User < ApplicationRecord
  belongs_to :department
  belongs_to :representative
  has_secure_password
end
