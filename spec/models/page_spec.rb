# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Page, :type => :model do
	before(:each) do
		I18n.locale = :en
		@page = Page.create title: "Hello World", body: "**Test**"
		I18n.locale = :"pt-BR"
		@page.update_attributes(title: "Ola Mundo", body: "__Teste__")
	end

	context "translations" do
		it "should read the correct translation" do
			@page = Page.last
			I18n.locale = :en
			expect(@page.title).to eq("Hello World")
			expect(@page.body).to eq("**Test**")
			I18n.locale = :"pt-BR"
			expect(@page.title).to eq("Ola Mundo")
			expect(@page.body).to eq("__Teste__")
		end
	end
end
