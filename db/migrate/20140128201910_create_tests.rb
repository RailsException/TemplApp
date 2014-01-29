class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :name
      t.references :user

      t.timestamps
    end
    add_index :tests, :user_id
  end
end
