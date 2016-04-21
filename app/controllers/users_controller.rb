class UsersController < ApplicationController
 def new
   @user = User.new
 end

def create
  #@user = User.new(params[:user].permit(:email, :password, :password_confirmation))
  #Persona.new(params[:nuevo_usuario].permit(:nombre, :email,:identificador, :telefono,:sexo,:email_confirmation))
  @user = User.new(user_params)
  if @user.save
    redirect_to root_url, :notice => "Signed up!"
  else
    render "new"
  end
end

private

def user_params
	params.require(:user).permit(:email, :password, :password_confirmation)
end

end
