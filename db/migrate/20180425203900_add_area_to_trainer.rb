class AddAreaToTrainer < ActiveRecord::Migration[5.1]
  def change
    add_reference :trainers, :area, foreign_key: true
  end
end
