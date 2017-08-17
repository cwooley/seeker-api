class Interaction < ApplicationRecord
  belongs_to :job_app, dependant: :destroy
end
