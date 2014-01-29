class User < ActiveRecord::Base
 require 'digest/md5'
 
 has_many :donars

  attr_accessible :email, :first_name, :last_name, :password, :role, :password_confirmation
  	
  before_save :convert_downcase, :ecrypt_password 

  
  validates :first_name, :presence => true, :length => {:minimum => 2, :allow_blank => TRUE}
  validates :last_name, :presence => true, :length => {:minimum => 2, :allow_blank => TRUE}
  validates :password, :presence => true, :length => {:minimum => 6, :allow_blank => TRUE}, :confirmation => TRUE
  validates :password_confirmation, :presence => TRUE
  validates :email , :presence => TRUE, :uniqueness => TRUE, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }

  def ecrypt_password
  		self.password = Digest::MD5.hexdigest(password)
  end
  def convert_downcase
      self.email = email.downcase
  end
  def self.validate_login (email,password)
    user = User.find_by_email(email.downcase)
    if user && user.password == Digest::MD5.hexdigest(password) 
      user
    else
      nil
    end

  end

end
