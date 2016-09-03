class User < ActiveRecord::Base
  rolify
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :authentication_keys => [:mobile, :email]
          # :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  validates_presence_of :mobile, :email, :name
  validates_uniqueness_of :mobile, :email

end
