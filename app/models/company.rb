class Company < ActiveRecord::Base
  validate :name, :presence => true
  has_many :disputes, :dependent => :destroy
  attr_accessible :name, :department, :phone, :fax, :address, :email, :category
end
