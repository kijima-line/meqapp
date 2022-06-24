class Mee < ApplicationRecord
    belongs_to :user
    #has_many_attached :images

    #validates :images, presence: true
    #mount_uploader :image, ImageUploader
    has_one_attached :image
    validates :title,presence: true
    validates :q_a, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..12 },presence:true
    validates :q_b, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..31 } ,presence:true
end
