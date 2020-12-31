class User < ApplicationRecord
  before_save {email.downcase!}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze

  validates :name, presence: true,
            length: {maximum: Settings.user.name.max_length}
  validates :email, presence: true,
            length: {maximum: Settings.user.mail.max_length},
            format: {with: VALID_EMAIL_REGEX}, uniqueness: true
  validates :password, presence: true,
            length: {minimum: Settings.user.password.min_length}
  has_secure_password
end
