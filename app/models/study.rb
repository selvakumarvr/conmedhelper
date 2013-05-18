class Study < ActiveRecord::Base
  attr_accessible :description, :name
  
  # Relationship
  has_many :drugs
  
  # Scopes
  scope :alphabetical, order('name')
  scope :search, lambda { |term| where('name LIKE ?', "#{term}%").order("name") }
  
  # Methods
 

end
