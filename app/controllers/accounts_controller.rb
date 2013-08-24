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
  
    # GET /drugs/1/edit
  def edit
    @user = User.find(params[:id])
  end
  # PUT /drugs/1
  # PUT /drugs/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to users_path, notice: 'Drug was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drugs/1
  # DELETE /drugs/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end

