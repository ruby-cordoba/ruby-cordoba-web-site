class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :recoverable, :rememberable, :trackable,

  devise :database_authenticatable, :registerable, :validatable

  attr_accessible :email, :password, :password_confirmation
  # attr_accessible :title, :body, :remember_me
end
