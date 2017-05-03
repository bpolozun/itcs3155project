class Group < ApplicationRecord
    has_many :applicants, dependent: :destroy
    validates :groupName, presence: true
    validates :numberNeeded, presence: true, length: { minimum: 1}
end
