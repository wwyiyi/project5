class Micropost < ActiveRecord::Base
  validates :content, length: { maximum: 500 }
end
