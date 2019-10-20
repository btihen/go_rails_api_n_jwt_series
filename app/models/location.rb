class Location < ApplicationRecord
  has_many :recordings, dependent: :destroy # or maybe :delete_all
end
