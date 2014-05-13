class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
<<<<<<< HEAD
end
=======
  
  def index
    @users = User.all
  end
  
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
