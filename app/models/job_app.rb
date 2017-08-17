class JobApp < ApplicationRecord
  has_many :contacts
  has_many :interactions
  belongs_to :user, dependant: :destroy
end
