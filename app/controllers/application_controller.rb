class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken
  include ActionController::HttpAuthentication::Token::ControllerMethods
  # before_action :authenticate

  def authenticate
    authenticate_or_request_with_http_token do |token|
      auth_user = User.find_by(token: token)
      auth_user != nil ? true : false
    end
  end
end
