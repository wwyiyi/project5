class Micropost < ActiveRecord::Base
  belongs_to :user
<<<<<<< HEAD
  has_many :comments
=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  validates :body, presence: true
<<<<<<< HEAD
  has_attached_file :pic,
    :default_url => '/assets/na.jpg',
    :styles => 
          { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :pic, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

  # Returns microposts from the users being followed by the given user.
  def self.from_users_followed_by(user)
    followed_user_ids = "SELECT followed_id FROM relationships
                         WHERE follower_id = :user_id"
    where("user_id IN (#{followed_user_ids}) OR user_id = :user_id",
          user_id: user.id)
  end
end
