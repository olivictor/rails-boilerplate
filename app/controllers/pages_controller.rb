class PagesController < InheritedResources::Base
	def home
		@page = Page.create(:title => 'home')
	end
end
