class User < ActiveRecord::Base
  has_many :advertisements
end
