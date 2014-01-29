class Datha < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address1, :address2, :city, :country, :dob, :email, :first_name, :gotra, :last_name, :mobile, :postcode, :refemail, :state
end
