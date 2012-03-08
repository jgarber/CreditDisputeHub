require 'spec_helper'

describe Dispute do
  it "should allow simultaneous creation of a company" do
    company_attributes = Factory.attributes_for :company
    dispute_attributes = Factory.attributes_for :dispute
    dispute_attributes.merge! :company_attributes => company_attributes

    dispute = Dispute.create(dispute_attributes)
    dispute.company.name.should == company_attributes[:name]
  end
end
