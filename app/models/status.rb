class Status < ActiveRecord::Base
  attr_accessible :content, :email, :user_id
  belongs_to :user
end
