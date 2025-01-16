class Employee < ApplicationRecord
    validates :username, :age, :password, presence: true
    validates :email, presence: true, uniqueness: true
end
