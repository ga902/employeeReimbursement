class Department < ApplicationRecord
    has_many :employees
    has_many :bills through: :employees
end
