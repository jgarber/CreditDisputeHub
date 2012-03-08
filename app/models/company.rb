class Company < ActiveRecord::Base
  validate :name, :presence => true
end
