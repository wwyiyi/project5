class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy
  has_many :followed_users, through: :relationships, source: :followed
  has_many :reverse_relationships, foreign_key: "followed_id",
                                   class_name:  "Relationship",
                                   dependent:   :destroy
  has_many :followers, through: :reverse_relationships, source: :follower
<<<<<<< HEAD

  before_save { email.downcase! }
  before_save { self.email = email.downcase }
  before_create :create_remember_token
  validates :name, presence: true, length: { maximum: 50 }, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }

=======
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :name, presence:true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

<<<<<<< HEAD
  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def feed
    Micropost.from_users_followed_by(self)
  end

=======
  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  
  def feed
    Micropost.from_users_followed_by(self)
  end
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def following?(other_user)
    relationships.find_by(followed_id: other_user.id)
  end

  def follow!(other_user)
    relationships.create!(followed_id: other_user.id)
  end
<<<<<<< HEAD

=======
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  def unfollow!(other_user)
    relationships.find_by(followed_id: other_user.id).destroy
  end

  private

    def create_remember_token
<<<<<<< HEAD
      self.remember_token = User.digest(User.new_remember_token)
    end
=======
      self.remember_token = User.hash(User.new_remember_token)
    end

>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
end
