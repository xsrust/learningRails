class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :contents, dependent: :destroy
	validates :title, presence: true, length: { minimum: 5 }
	validates :category, presence: true, inclusion: { in: %w(image content list compilation),
    message: "%{value} is not a valid type of article"}
end
