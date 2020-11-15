

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

Some db tricks, to reset the database and begin counting from id=1:
> rake db:drop
> rake db:migrate
> rake db:seed
