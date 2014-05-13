class UsersController < ApplicationController
<<<<<<< HEAD
 before_action :signed_in_user,
            only: [:index, :edit, :update, :destroy, :following, :followers]
 before_action :correct_user,   only: [:edit, :update]
 before_action :admin_user,     only: :destroy

  def new
    @user = User.new
  end
  
=======
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,   only: [:edit, :update] 
  before_action :admin_user,     only: :destroy
  
  def index
    @users = User.paginate(page: params[:page])
  end
 
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
<<<<<<< HEAD

  def index
    @users = User.paginate(page: params[:page])
  end

 def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to the Trading World!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
  end

  def update
=======
  
  def new
    if signed_in?
      redirect_to home
    else
      @user = User.new
    end
  end
  
  def destroy
    if @user == User.find(params[:id])
      flash[:error] = "Can not delete yourself!"
      redirect_to users_url
    else
      User.find(params[:id]).destroy
      flash[:success] = "User deleted."
      redirect_to users_url
    end
  end
  
  def create
    if signed_in?
      redirect_to home
    else  
	  @user = User.new(user_params)
	  if @user.save
	    sign_in @user
	    flash[:success] = "Welcome to the Sample App!"
	    redirect_to @user
	  else
	    render 'new'
	  end
	end
  end
  
  def edit
  end
  
  def update
    @user = User.find(params[:id])
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
<<<<<<< HEAD

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end
<<<<<<< HEAD

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private
<<<<<<< HEAD
=======
  
    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
<<<<<<< HEAD

  # Before filters
=======
    
    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
<<<<<<< HEAD

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
end
