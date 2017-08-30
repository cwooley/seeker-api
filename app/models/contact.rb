class Contact < ApplicationRecord
  belongs_to :company, dependent: :destroy
end
