class Api::V1::AuthenticationController < ApiController
  skip_before_action :authenticate_token!

  def create
  # user = User.find_by(email: params[:user][:email])
  # if user.valid_password? params[:user][:password]
  user = User.find_by(email: params[:auth][:email])
  if user.valid_password? params[:auth][:password]
      payload = { sub: user.id } # add other data as needed
      render json: { token: JsonWebToken.encode(payload) }
    else
      render json: { errors: ["Invalid email or password"] }
    end
  end

  private 

  # def auth_params
  # end
  
end