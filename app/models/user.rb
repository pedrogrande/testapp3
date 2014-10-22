class User < ActiveRecord::Base
  rolify
	has_many :business_users
	has_many :business_profiles, through: :business_users
	has_one :user_profile
  has_many :testimonials

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_user_profile, :assign_default_role

  def create_user_profile
  	self.user_profile = UserProfile.new
  end

  def assign_default_role
  	self.add_role :user
  end
end









