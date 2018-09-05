class User < ApplicationRecord
  attr_accessor :remember_token
  before_save { email.downcase! }
  scope :ci_find, lambda { |attribute, value| where("lower(#{attribute}) = ?", value.downcase).first }
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :name, presence: true , length: { maximum: 50 }
  validates :email, uniqueness: { case_sensitive: false } , presence: true , length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX }

  validates :password, presence: true, length: { minimum: 4 }, allow_nil: true

  has_many :posts

  def remember
    self.remember_token = SecureRandom.urlsafe_base64
    # update_attribute(:remember_digest, BCrypt::Password.create(remember_token))
    update_attribute(:remember_digest, Digest::SHA1.hexdigest(remember_token))
  end

end
