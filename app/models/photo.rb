class Photo < ApplicationRecord
  has_many :likes, as: :likeable
end
