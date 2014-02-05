class Donar < ActiveRecord::Base
  belongs_to :user
  attr_accessible :address1, :address2, :city, :country, :dob, :email, :first_name, :gotra, :last_name, :refemail, :state

  validates :first_name , :presence => TRUE, :length  => {:minimum => 2, :maximum => 55, :allow_blank => false}
  validates :last_name , :presence => TRUE, :length => {:minimum => 2, :maximum => 55, :allow_blank => false}
  validates :email , :uniqueness => TRUE, :presence => TRUE, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }
  validate :refemail , :allow_blank => TRUE, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}




end
