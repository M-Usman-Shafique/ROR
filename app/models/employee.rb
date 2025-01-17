# app/models/employee.rb
class Employee < ApplicationRecord
    has_many :documents

    validates :username, :age, :password, presence: true
    validates :email, presence: true, uniqueness: true

    def name_with_email
        "#{username} (#{email})"
    end
end
