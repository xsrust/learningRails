class Content < ActiveRecord::Base
  belongs_to :article
  validates :category, presence: true, inclusion: { in: %w(image content item link),
    message: "%{value} is not a valid type of article"}
end
