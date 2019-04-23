class ApplicationController < ActionController::Base
  helper_method :current_user, :is_signin, :same_user
    
    def current_user
      if session[:user_id]
        @current_user ||= User.find(session[:user_id])
      else
        @current_user = nil
      end
    end
    
  end
    private
    def	is_signin
      unless	current_user
      redirect_to	login_url,	alert:	"Ação	não	permitida.	Necessário	
      acessar	a	conta	primeiro."
    end

      
    def	same_user
      @user	=	User.find(params[:id])
      unless	current_user	==	@user
          redirect_to	root_url
      end
    end
  
end


