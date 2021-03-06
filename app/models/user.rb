# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  first_name             :string(255)
#  last_name              :string(255)
#  username               :string(255)
#  admin                  :boolean
#  created_at             :datetime
#  updated_at             :datetime
#  uid                    :string(255)
#  provider               :string(255)
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :trackable
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable 

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me,:first_name,:last_name,:username,:uid ,:provider
  # attr_accessible :title, :body
  has_many :comments
  has_many :events
  has_many :activity
  has_many :social_authentications
end
