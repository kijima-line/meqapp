class Mee < ApplicationRecord
    belongs_to :user
    validates :q_a, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..12 },presence:true
    validates :q_b, allow_blank: true, numericality: {only_integer: true}, length: { in: 1..31 } ,presence:true
end
