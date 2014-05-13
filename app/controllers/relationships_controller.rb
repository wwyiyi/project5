class RelationshipsController < ApplicationController
  before_action :signed_in_user

<<<<<<< HEAD
  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
=======
  respond_to :html, :js

  def create
    @user = User.find(params[:relationship][:followed_id])
    current_user.follow!(@user)
    respond_with @user
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  end

  def destroy
    @user = Relationship.find(params[:id]).followed
    current_user.unfollow!(@user)
<<<<<<< HEAD
    respond_to do |format|
      format.html { redirect_to @user }
      format.js
    end
  end
end
=======
    respond_with @user
  end
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
