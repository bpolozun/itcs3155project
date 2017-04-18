class Group < ApplicationRecord
    has_many :applicants
    validates :name, presence: true
    validates :contact, presence: true
end
