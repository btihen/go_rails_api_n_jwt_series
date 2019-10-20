class User < ApplicationRecord
  has_secure_password

  # adds info to knock payload
  def to_token_payload 
    {
      sub: id,
      admin: true,
      email: email,
    }
  end
end
