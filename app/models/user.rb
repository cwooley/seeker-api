class User < ApplicationRecord
  has_many :companies
  has_many :interactions, through: :companies
  has_many :contacts, through: :companies
  has_secure_password



end
