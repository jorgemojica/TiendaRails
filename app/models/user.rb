class User < ApplicationRecord

  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates :password, length: { minumum: 6 }

end
