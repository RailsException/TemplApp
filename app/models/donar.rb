class Donar < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address1, :address2, :city, :country, :dob, :email, :first_name, :gotra, :last_name, :refemail, :state
end
