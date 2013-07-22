class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :title, :body, :email, :password , :password_confirmation,
  	:first_name, :last_name, :profile_name, :remember_me

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
  					uniqueness: true,
  					format: {
  						with: /^[a-zA-Z0-9_-]+$/,
  						message: 'Must be formatted correctly.'
  					}

has_many :statuses

  def full_name
  	first_name + " " + last_name
  end
end
