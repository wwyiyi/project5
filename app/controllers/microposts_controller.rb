class MicropostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

<<<<<<< HEAD
  def show
    @micropost = Micropost.find(params[:id])
    
  end

=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def create
    @micropost = current_user.microposts.build(micropost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end
<<<<<<< HEAD
=======
  
  def show
    @micropost = Micropost.find(params[:id])
  end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

  def destroy
    @micropost.destroy
    redirect_to root_url
  end

  private

    def micropost_params
<<<<<<< HEAD
      params.require(:micropost).permit(:content, :body, :pic, :attach)
    end

    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
=======
      params.require(:micropost).permit(:content, :body)
    end
    
    def correct_user
  	  @micropost = current_user.microposts.find(params[:id])
    rescue
      redirect_to root_url
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    end
end
