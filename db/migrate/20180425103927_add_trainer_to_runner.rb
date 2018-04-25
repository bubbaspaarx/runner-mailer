class AddTrainerToRunner < ActiveRecord::Migration[5.1]
  def change
    add_reference :runners, :trainer, foreign_key: true
  end
end
