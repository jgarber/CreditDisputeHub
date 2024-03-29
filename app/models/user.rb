class User < ActiveRecord::Base
  has_many :authorizations
  attr_accessible :name

  def self.create_from_hash!(hash)
    create(:name => hash['info']['name'])
  end
end
