class Drug < ActiveRecord::Base
  attr_accessible :category, :information, :instructions, :study_id, :medication_name, :medication_category, :common_name
  
  # Relationships
  belongs_to :study
  
  # Scopes
  scope :alphabetical, order('name')
  scope :prohibited, where('category = ?', 'prohibited')
  scope :restricted, where('category = ?', 'restricted')
  scope :permitted, where('category = ?', 'permitted')
  scope :search, lambda { |term| where('medication_name LIKE ? OR common_name LIKE ?', "#{term}%", "#{term}%").order("medication_name", "common_name")  }
  scope :for_study, lambda {|study_id| where("study_id = ?", study_id) }
  
  
  
  # Validations 
  validates_inclusion_of :category, :in => %w[prohibited restricted permitted], :message => "is not an option"
  
  # Misc
  CATEGORIES_LIST = [['Prohibited', 'prohibited'],['Restricted', 'restricted'],['Permitted', 'permitted']]
  
  # Method
  
end
