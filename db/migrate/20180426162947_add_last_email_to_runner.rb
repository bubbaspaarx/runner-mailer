class AddLastEmailToRunner < ActiveRecord::Migration[5.1]
  def change
    add_column :runners, :last_email, :date
  end
end
