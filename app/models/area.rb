class Area < ApplicationRecord
  has_many :runners
  has_many :trainers
end
