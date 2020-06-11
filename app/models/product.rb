class Product < ApplicationRecord
    has_many :lineitems
    #callback function
    before_destroy :make_sure_no_line_n_any_cart
    validates(:name, :descripton, :image, presence: true)
    validates :price, numericality: {greater_than_or_equal_to: 0.01}
    validates :image, allow_blank: true, format: {with: %r{\.(gif|jpg|png)\Z}i,message: "must be an image"}
    def make_sure_no_line_n_any_cart
        if self.lineitems.empty?
            return true
        else
            errors.add(:base,"line items present")
            return false
        end
    end
end
