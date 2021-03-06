class ApplicationController < ActionController::Base
  protect_from_forgery
  private
  def check_login
  	if !session[:user_id]
  		flash[:alert] = "Please login into system."
  		flash[:status]  = FALSE
  	 	redirect_to "/home/index"
  	else
  		flash[:alert] = "You have access"
  		flash[:status]  = TRUE
  	end 
  end
  
  def check_adminaccess
    if session[:user_id]
      if  (session[:user_role]  != "Adminuser") 
        flash[:alert] = "You don't have access to view, Please contact Administrator."
        redirect_to home_index_path         
      end
    end  
  end


  def check_adminorpriest
    if session[:user_id]
      if  (session[:user_role]  != "Adminuser") && (session[:user_role].downcase  != "priest")
         flash[:alert] = "You don't have access to view, Please contact Administrator."
         redirect_to home_index_path         
      end 
    end  
  end
end
