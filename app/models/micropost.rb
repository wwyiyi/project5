class Micropost < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  validates :body, presence: true
  has_attached_file :pic,
    :default_url => '/assets/na.jpg',
    :styles => 
          { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
