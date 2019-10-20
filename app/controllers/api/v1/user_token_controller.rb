class Api::V1::UserTokenController < Knock::AuthTokenController
  skip_before_action :verify_authenticity_token
  def entity_name
    'User'
  end
end

# class Api::V1::UserTokenController < Knock::AuthTokenController
#   # because it is moved to a scope we need to do the following:
#   # the default is to take the first part of the Controller name
#   def entity_name
#     'User'
#   end
# end
