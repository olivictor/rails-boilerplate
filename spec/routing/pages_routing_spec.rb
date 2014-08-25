require "rails_helper"

RSpec.describe PagesController, :type => :routing do
  before :each do
    @page = Page.create title: "Hello World", body: "**Test**"
    @pages_route = I18n.t(:pages, scope: :routes)
  end

  describe "routing" do

    it "routes to #show" do
      expect(:get => "/#{@pages_route}/#{@page.slug}").
        to route_to("pages#show", :id => @page.friendly_id, :locale => I18n.locale.to_s)
    end

    it "routes to #new" do
      expect(:get => "/pages/new").not_to be_routable
    end

    it "routes to #edit" do
      expect(:get => "/pages/1/edit").not_to be_routable
    end

    it "routes to #create" do
      expect(:post => "/pages").not_to be_routable
    end

    it "routes to #update" do
      expect(:put => "/pages/1").not_to be_routable
    end

    it "routes to #destroy" do
      expect(:delete => "/pages/1").not_to be_routable
    end

  end
end
