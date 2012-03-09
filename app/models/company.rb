class Company < ActiveRecord::Base
  validate :name, :presence => true
  has_many :disputes, :dependent => :destroy
end
