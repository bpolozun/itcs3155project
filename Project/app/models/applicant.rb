class Applicant < ApplicationRecord
  belongs_to :group
  validates :name, presence: true
  validates :contact, presence: true
end
