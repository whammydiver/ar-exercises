require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...


@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Richard", last_name: "Edward", hourly_rate: 62)
@store1.employees.create(first_name: "Jennifer", last_name: "Krantz", hourly_rate: 64)
@store1.employees.create(first_name: "Sarah", last_name: "Cassels", hourly_rate: 58)
@store1.employees.create(first_name: "Jonathon", last_name: "Wright", hourly_rate: 57)
@store2.employees.create(first_name: "Xi", last_name: "Soo-Chen", hourly_rate: 63)
@store2.employees.create(first_name: "Ariel", last_name: "Singh", hourly_rate: 92)
@store2.employees.create(first_name: "Amir", last_name: "Khan", hourly_rate: 80)
@store2.employees.create(first_name: "Saul", last_name: "Alvarez", hourly_rate: 25)
@store2.employees.create(first_name: "Katie", last_name: "Taylor", hourly_rate: 41)

### Exercise 6: One-to-many association

# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that 
# it has a `store_id` (integer) column. This is a column that identifies which store each employee belongs to. It points to the `id` 
# (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the `store_id` column.

# 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
# 2. Add the following code directly inside the Employee model (class): `belongs_to :store`
# 3. Add some data into employees. Here's an example of one (note how it differs from how you 
# create stores): `@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)`
# 4. Go ahead and create some more employees using the create method. You can do this by making multiple 
# calls to create (like you have before.) No need to assign the employees to variables though. Create them through 
# the `@store#` instance variables that you defined in previous exercises. Create a bunch under 
# `@store1` (Burnaby) and `@store2` (Richmond). Eg: `@store1.employees.create(...)`.