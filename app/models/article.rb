class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :contents, dependent: :destroy
	belongs_to :user
	validates :title, presence: true, length: { minimum: 5 }
	validates :category, presence: true, inclusion: { in: %w(image content list compilation),
    message: "%{value} is not a valid type of article"}

    scope :user_id, -> (user_id) {where user_id: user_id}
end
