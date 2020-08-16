class User < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_secure_password

  validates :username, presence: true, length: { in: 3..15 },
                       uniqueness: { case_sensitive: false, message: 'is already taken.' }
end
