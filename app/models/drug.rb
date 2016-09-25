class Drug < ActiveRecord::Base
  attr_accessible :category, :information, :instructions, :study_id, :medication_name, :medication_category, :common_name,:brand_name
  
  # Relationships
  belongs_to :study
  
  # Scopes
  scope :alphabetical, order('name')
  scope :prohibited, where('category = ?', 'Following Medications are prohibited 30 days prior to screening and throughout the study period')
  scope :restricted, where('category = ?', 'Following medications are allowed during the study; However, they are prohibited within 48 hours prior to taking IP')
  scope :permitted, where('category = ?', 'Following Medications are allowed during the study; however they are prohibited within 24 hours prior to taking IP')
  scope :search, lambda { |term| where('medication_name LIKE ? OR brand_name LIKE ?', "#{term}%", "#{term}%").order("medication_name", "brand_name")  }
  scope :for_study, lambda {|study_id| where("study_id = ?", study_id) }
  

  # Misc
  CATEGORIES_LIST = [['Following Medications are prohibited 30 days prior to screening and throughout the study period', 'Following Medications are prohibited 30 days prior to screening and throughout the study period'],['Following medications are allowed during the study; However, they are prohibited within 48 hours prior to taking IP', 'Following medications are allowed during the study; However, they are prohibited within 48 hours prior to taking IP'],['Following Medications are allowed during the study; however they are prohibited within 24 hours prior to taking IP', 'Following Medications are allowed during the study; however they are prohibited within 24 hours prior to taking IP']]
  
  # Method
  
end
