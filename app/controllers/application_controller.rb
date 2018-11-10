class ApplicationController < ActionController::API
  before_action :authorized

  def encode_token(payload)
    # need to hide your secret in an environment variable
    JWT.encode(payload, 'hello')
  end

  def auth_header
    # { 'Authorization': 'Bearer <token>' }
    request.headers['Authorization']
  end 
  
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'hello', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end 
  end

  def current_user
    if decoded_token
      # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
      # or nil if we can't decode the token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end
  
  def logged_in?
    !!current_user
  end 

  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end

  def get_image_url
    -> (image) do 
      begin
        url_for(image)
      rescue Module::DelegationError
        ""
      end
    end      
  end
 
end
