class ApiController < ApplicationController
  ActionController::InvalidAuthenticityToken

  # not working with Rails 6 :(
  # before_action :authenticate_user 
  before_action :set_default_format 

  private

  def set_default_format
    request.format = :json
  end

  # def authenticate_user
  #   authenticate_for User
  # end
end