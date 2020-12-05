class Payment < ApplicationRecord
  belongs_to :student

  validates :amount, presence: true
  #validates_inclusion_of :paid, :in => [true, false]

  # def formatted_date
  #   self.paid.strftime("%b %d, %Y")
  # end


end
