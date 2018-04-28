class Preference < ApplicationRecord
  has_many :runner_prefs, dependent: :destroy
end
