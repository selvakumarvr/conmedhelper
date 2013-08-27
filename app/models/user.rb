class User < ActiveRecord::Base
attr_accessible :login,  :password, :name
  
  #
		 validates :login, :confirmation => true,
                      
                       :presence => true
					  validates :name, :confirmation => true,
                     
                       :presence => true
					   

  validates :password, :confirmation => true,
                       :length => { :within => 4..20 },
                       :presence => true
					   

end
