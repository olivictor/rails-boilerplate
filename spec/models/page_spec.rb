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

	# TODO: use factorygirl

	context "translations" do
		before(:each) do
			I18n.locale = :en
			@page = Page.create title: "Hello World", body: "**Test**"
			I18n.locale = :"pt-BR"
			@page.update_attributes(title: "Ola Mundo", body: "__Teste__")
		end

		it "should read the correct translation" do
			I18n.locale = :en
			@page.title.should == "Hello World"
			@page.body.should == "**Test**"
			I18n.locale = :"pt-BR"
			@page.title.should == "Ola Mundo"
			@page.body.should == "__Teste__"
		end
	end
end
