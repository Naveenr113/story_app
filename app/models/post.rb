class Post < ApplicationRecord
  validates :title, :name,  presence: true
  has_many :comments
end
