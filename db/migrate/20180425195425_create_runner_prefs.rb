class CreateRunnerPrefs < ActiveRecord::Migration[5.1]
  def change
    create_table :runner_prefs do |t|
      t.references :preference, foreign_key: true
      t.references :runner, foreign_key: true

      t.timestamps
    end
  end
end
