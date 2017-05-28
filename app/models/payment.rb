class Payment < ApplicationRecord
  belongs_to :owner
  belongs_to :project
end
