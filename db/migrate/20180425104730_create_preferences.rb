class CreatePreferences < ActiveRecord::Migration[5.1]
  def change
    create_table :preferences do |t|
      t.string :preference

      t.timestamps
    end
  end
end
