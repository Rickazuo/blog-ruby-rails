class Author < ApplicationRecord
    validates :first_name, presence: true, length: { minimum: 2, maximum: 100 }
    validates :description, allow_nil: true, length: { maximum: 500 }

    after_validation :titleize_last_name, if: Proc.new { |a| a.last_name.present? }, on: :create

    has_many :addresses, dependent: :destroy
    has_many :posts
    has_one_attached :avatar
    has_many_attached :photos

    private
    def titleize_last_name
        self.last_name = last_name.titleize
    end
end
