# phone                   	 int(11)      
# street                  	 varchar(255) 
# place                   	 varchar(255) 
# state                   	 text         
# country                 	 text         
# narration	                 text
class Address < ActiveRecord::Base
	belongs_to :user_id
end
