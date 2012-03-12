class Dispute < ActiveRecord::Base
  belongs_to :company
  accepts_nested_attributes_for :company
  attr_accessible :title, :company_id, :disputed_amount, :description,
    :private, :company_attributes

  validates :company, :title, :description, :presence => true
end
