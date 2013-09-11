class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to new_story_path
    else
      flash[:error] = 'Invalid email/password combination' # Not quite right!
      render 'new'
    end
  end

  def sign_out
    self.current_user = nil
    cookies.delete(:remember_token)
  end

  def destroy
    sign_out
    redirect_to home_path
  end
end
