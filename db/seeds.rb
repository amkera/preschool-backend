# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

meelo = Student.create(name: "Meelo", bio: "I am 3 years old, and I'm an airbender!", allergies: "Peanuts")
payment1 = Payment.create(student_id: 1, date: Date.today, amount: 100, paid: true)
payment2 = Payment.create(student_id: 1, date: Date.today, amount: 200, paid: true)



baby_bison = Student.create(name: "Baby Bison", bio: "I was just born and I can't fly yet.")
payment3 = Payment.create(student_id: 2, date: Date.today, amount: 400, paid: true)



baby_spirit = Student.create(name: "Baby Spirit", bio: "I'm super cute!", allergies: "Bad Energy")
payment4 = Payment.create(student_id: 3, date: Date.today, amount: 0, paid: false)
