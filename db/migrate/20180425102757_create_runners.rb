class CreateRunners < ActiveRecord::Migration[5.1]
  def change
    create_table :runners do |t|
      t.string :name
      t.string :status
      t.boolean :active
      t.date :last_activity

      t.timestamps
    end
  end
end
