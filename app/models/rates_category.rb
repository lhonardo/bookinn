class RatesCategory < ActiveRecord::Base
  belongs_to :rooms_category
  belongs_to :rate
end
