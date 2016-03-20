include ActionController::HttpAuthentication::Basic::ControllerMethods
include ActionController::HttpAuthentication::Token::ControllerMethods

class ApplicationController < ActionController::API
  def token
    authenticate_with_http_basic do |email, password|
      puts "The email = #{email} and pw = #{password}"
      user = User.find_by(email: email)
      if user && user.password == password
        render json: { token: user.auth_token, user: user }
      else
        render json: { error: 'Incorrect credentials' }, status: 401
      end
    end
  end

  private

  def authenticate_user_from_token
    unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
      render json: { error: 'Bad Token'}, status: 401
    end
  end

  def set_current_user
    if user = authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
      puts "setting current user"
      @current_user = user
    end
  end
end
