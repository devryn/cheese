class User < ApplicationRecord
  include Clearance::User

  validates :email, presence: true
  validates :password, presence: true
end
