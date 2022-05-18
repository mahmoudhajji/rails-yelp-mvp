class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, :address, presence: true
    CAT = ["chinese", "italian", "japanese", "french", "belgian"]
    validates :category, inclusion: { in: CAT }
end
