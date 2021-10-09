class Book < ApplicationRecord
    before_save :upcase_title
    before_save :check_page_count

    has_many :comments
    belongs_to :user

    validates :title, presence: true, uniqueness: true
    validates :description, length: { maximum: 100 }, presence: true
    validates :author, presence: true
    validates :page_count, presence: true, numericality: { only_integer: true }

    scope :availables, -> { where(visible: true) }

    private

    def upcase_title
        self.title = title.upcase
    end

    def check_page_count
        self.page_count = 0 if page_count.nil?
    end
end