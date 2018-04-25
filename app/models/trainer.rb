class Trainer < ApplicationRecord
  belongs_to :area
  has_many :runners
end
