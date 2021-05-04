class House < ApplicationRecord
    #  mount_uploader :photo, PhotoUploader
    #has_one_attached :photo
    belongs_to :account
    has_many_attached :photos
end
