class SessionsController < ApplicationController
  def login
  	user = User.validate_login(params['user']['email'],params['user']['pwd'])
  	if user 
  		session['user_id'] = user.id 
  		session['user_role'] = user.role 
  		session['user_email'] = user.email 
  		session['user_ip'] = request.remote_ip
  		flash[:alert] = "login passwed"
  		redirect_to home_index_path


  	else
  		flash[:alert] = "login failed"
  		redirect_to home_index_path

  	end

  end

  def destroy
  	session.clear
  	redirect_to home_index_path
  end
end
