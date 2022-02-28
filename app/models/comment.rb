class Comment < ApplicationRecord
  belongs_to :post
  belongs_to  :parent, class_name: 'Comment', optional: true
  has_many :comments, foreign_key: :parent_id
  has_many    :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
  validates :name, :body, presence: true

end
