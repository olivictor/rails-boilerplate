# == Schema Information
#
# Table name: pages
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  body          :text
#  slug          :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  page_group_id :integer
#

require 'rails_helper'

RSpec.describe Page, :type => :model do
	before(:each) do
		I18n.locale = :en
		@page = Page.create title: "Hello World", body: "**Test**"
		I18n.locale = :"pt-BR"
		@page.update_attributes(title: "Ola Mundo", body: "__Teste__")
	end

	# TODO: use factorygirl

	context "translations" do
		it "should read the correct translation" do
			@article = Page.last
			I18n.locale = :en
			@article.title.should == "Hello World"
			@article.body.should == "**Test**"
			I18n.locale = :"pt-BR"
			@article.title.should == "Ola Mundo"
			@article.body.should == "__Teste__"
		end
	end
end
