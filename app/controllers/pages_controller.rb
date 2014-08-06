class PagesController < InheritedResources::Base
	before_filter :only => [:show] do
		@page = Page.friendly.find(params[:id])
	end

	def home
		@page = Page.create(:title => 'home')
	end
end
