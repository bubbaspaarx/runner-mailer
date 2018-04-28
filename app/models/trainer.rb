class Trainer < ApplicationRecord
  belongs_to :area
  has_many :runners, dependent: :destroy
end
