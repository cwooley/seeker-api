class Company < ApplicationRecord
  has_many :contacts
  has_many :interactions
  belongs_to :user, dependent: :destroy
end
