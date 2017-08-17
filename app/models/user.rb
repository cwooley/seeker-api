class User < ApplicationRecord
  has_many :job_apps
  has_secure_password



end
