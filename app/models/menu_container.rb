class MenuContainer < ActiveRecord::Base
	has_many :menu_container_menu_links
	has_many :menu_links, :through => :menu_container_menu_links
end
