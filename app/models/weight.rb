class Weight < ApplicationRecord
  belongs_to :rabbit
  broadcasts_to :rabbit
end
