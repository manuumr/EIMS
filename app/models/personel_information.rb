#	 dob         	 datetime     
#	 age         	 int(11)      
#	 height      	 float        
#	 blood_group 	 varchar(255) 
class PersonelInformation < ActiveRecord::Base
has_many :addresses
has_many :parent_detail
end
