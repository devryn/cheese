class User < ApplicationRecord
  include Clearance::User

  validates :username, presence: true
  validates :password, presence: true
end
