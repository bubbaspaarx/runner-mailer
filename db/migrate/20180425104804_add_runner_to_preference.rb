class AddRunnerToPreference < ActiveRecord::Migration[5.1]
  def change
    add_reference :preferences, :runner, foreign_key: true
  end
end
