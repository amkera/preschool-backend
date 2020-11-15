

Student has_many :payments
  :students have
    :name - string,
    :bio - string,
    :allergies - string



Payment belongs_to :student
  :student_id is an integer
  :date is a datetime
  :amount is an float
  :paid is a boolean
