class Action < ApplicationRecord
  validates :description, presence: true
end
