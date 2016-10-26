class User < ApplicationRecord
  has_secure_password
  has_many :ideas
  has_many :likes, dependent: :destroy
  has_many :ideas_liked, through: :likes, source: :idea
  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }
  validates :name, :alias, presence: true
  validates_presence_of :password, on: :create
  validates :password, length: {minimum: 8}, on: :create
  validates_confirmation_of :password, :allow_blank => true
end
