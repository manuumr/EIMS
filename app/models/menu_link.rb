class MenuLink < ActiveRecord::Base

  belongs_to :module_context
	has_many :menu_container_menu_links
  has_many :menu_containers, :through => :menu_container_menu_links
  
  
	before_save :upcase_mathod, :capitalize_name
  before_create :add_path

	def upcase_mathod	
		self.method = self.method.upcase
  end

  def capitalize_name 
    self.name = self.name.capitalize
  end 
	
	def add_path
		self.path = self.path.to_s + "_path"
  end
end
