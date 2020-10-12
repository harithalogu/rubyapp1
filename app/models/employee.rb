class Employee < ApplicationRecord

validates_presence_of :name, :age, :gender, :designation


end
