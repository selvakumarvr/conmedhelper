class AccountsController < ApplicationController
  def new
     @user = User.new
  end
  
  def index
    @users = User.all
	end



  def create
    @user = User.new(params[:user])
	
	
	
    if @user.save
	
     redirect_to users_path, :notice => 'User successfully added.'
    else
      render :action => 'new'
    end
  end
  
    def edit
    @user = current_user
  end
  
  
 def update
    @user = current_user
    if @user.update_attributes(params[:user])
      redirect_to drugs_path,
:notice => 'Updated user information successfully.'
    else
      render :action => 'edit'
    end
  end
  def show
   @users = User.all
  end

end

