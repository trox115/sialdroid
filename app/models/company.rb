class Company < ApplicationRecord
  has_many :users,  foreign_key: "companies_id"
end
