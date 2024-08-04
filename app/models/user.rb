class User < ApplicationRecord
  has_many :blogs, dependent: :destroy
  before_save { self.email = email.downcase }
  enum role: { user: 0, admin: 1, guest: 2}
end
