class Dispute < ActiveRecord::Base
  belongs_to :company
  accepts_nested_attributes_for :company

  validates :company, :title, :description, :presence => true
end
