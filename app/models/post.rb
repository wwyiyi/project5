class Post < ActiveRecord::Base
  validates :micropost_id, presence: true
  belongs_to :micropost
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true
end
