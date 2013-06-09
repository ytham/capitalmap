class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :admin_user
  helper_method :current_user
  helper_method :admin_user_or_current_user
  helper_method :signed_in?
  helper_method :fetch_url

  private

    def admin_user
      redirect_to(root_path) unless current_user.admin?
    end

    def current_user
      @current_user ||= User.where(id: session[:user_id]).first if session[:user_id]
    end

    def admin_user_or_current_user
      redirect_to(root_path) unless current_user.admin? || current_user
    end

    def signed_in_user
      redirect_to login_path, notice: "Please sign in" unless signed_in?
    end

    def signed_in?
      !current_user.nil?
    end

    def fetch_url(url)
      r = Net::HTTP.get_response( URI.parse( url ) )
      if r.is_a? Net::HTTPSuccess
        r.body
      else
        nil
      end
    end

end
