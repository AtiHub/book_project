class Comment < ApplicationRecord
    before_create :accepted_default

    belongs_to :book
    belongs_to :user

    scope :accepted, -> {where(accepted: true)} 

    def commentter
        self.user ? user.email : 'Unknown'
    end

    def accepted_default
        self.accepted = false
    end
end
