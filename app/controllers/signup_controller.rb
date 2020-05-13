class SignupController < ApplicationController
  def  step1
  end

  def step2
    @user = User.new
  end

  def step3
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:birth_yy] = user_params[:birth_yy]
    session[:birth_mm] = user_params[:birth_mm]
    session[:birth_dd] = user_params[:birth_dd]    
    session[:first_name] = params[:first_name] 
    session[:family_name] = params[:family_name]
    session[:first_name_kana] = params[:first_name_kana]
    session[:family_name_kana] = params[:family_name_kana]

    @user = User.new
  end

  def step4
    session[:phone_number] = user_params[:phone_number]
    @user = User.new
  end



  
  private
  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation, 
      :image,
      :family_name, 
      :first_name, 
      :family_name_kana, 
      :first_name_kana, 
      :birth_dd,
      :birth_mm,
      :birth_yy,
      :phone_number,
      :introduction
  end
  
end
