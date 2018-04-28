class Runner < ApplicationRecord
  belongs_to :trainer
  belongs_to :area
  has_many :runner_prefs, dependent: :destroy
  has_many :preferences, through: :runner_prefs
end
