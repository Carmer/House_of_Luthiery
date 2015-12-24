class User < ActiveRecord::Base
  has_secure_password

  validates :passphrase, uniqueness: true
end
