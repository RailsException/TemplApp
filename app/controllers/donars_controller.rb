class DonarsController < ApplicationController
  before_filter :check_login, :check_adminorpriest 	
  def listalldonars
  end
end
