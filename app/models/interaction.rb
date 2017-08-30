class Interaction < ApplicationRecord
  belongs_to :company, dependent: :destroy
end
