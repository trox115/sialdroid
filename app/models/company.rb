class Company < ApplicationRecord
  has_many :users,  foreign_key: "companies_id"
  has_many :clientes, :through => :users
end
