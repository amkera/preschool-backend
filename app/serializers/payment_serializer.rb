class PaymentSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :date, :amount, :paid


end

#don't need the :student_id necessariliy because I nested the routes such that payments are only
#accessible through a student.
