class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :store_id, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
end

# - Employees must always have a first name present
# - Employees must always have a last name present
# - Employees have a hourly_rate that is a number (integer) between 40 and 200
# - Employees must always have a store that they belong to (can't have an employee that is not assigned a store)