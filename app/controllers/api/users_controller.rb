class Api::UsersController < ApplicationController
#     # GET /users/1
#   def show
#   end

  # GET /users/new
  def new
    @user = user.new
  end

#   # GET /users/1/edit
#   def edit
#   end

  # POST /users
  def create!
    @user = user.new(user_params)

    if @user.save
      redirect_to @user, notice: 'user was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'user was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    session = @user.session
    @user.destroy
    redirect_to session, notice: 'user was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = user.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
