class StaticPagesController < ApplicationController
<<<<<<< HEAD
=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end
<<<<<<< HEAD

  def help
  end
=======
  
  def help
  end

  def about
  end

  def contact
  end

>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
end
