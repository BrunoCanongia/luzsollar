class UsersController < ApplicationController

  before_action :authorize

  def index
    @users = User.order(:id).page params[:page]
  end

  def show
    @user = User.find(params[:id])
 
  end

  def new
    @user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		session[:user_id] = @user.id
  		redirect_to @user, :notice => 'Cadastro criado com sucesso!'
  	else
  		render :new
  	end
  end


  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      if(current_user && current_user.card.card == "JanjaDev")
        redirect_to @user, :notice => 'Ai que delícia cara!'
      else
        redirect_to @user, :notice => 'Cadastro alterado!'
      end
    else
      render :edit
    end
  end


  private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :card_id)
  end

end
