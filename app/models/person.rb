class Person < ActiveRecord::Base
  belongs_to :document
  belongs_to :country
  belongs_to :state
  belongs_to :city
end
