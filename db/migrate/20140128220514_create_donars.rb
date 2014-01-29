class CreateDonars < ActiveRecord::Migration
  def change
    create_table :donars do |t|
      t.string :first_name, :limit => 55
      t.string :last_name, :limit => 55
      t.string :email
      t.string :refemail
      t.date :dob
      t.string :address1, :limit => 55
      t.string :address2, :limit => 55
      t.string :city
      t.string :state
      t.string :country
      t.string :gotra
      t.references :user

      t.timestamps
    end
    add_index :donars, :email, :unique => true
    add_index :donars, :user_id
  end
end
