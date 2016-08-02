class Usercheese < ApplicationRecord
  belongs_to :user
  has_many :cheeses
end
