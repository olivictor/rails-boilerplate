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

class Page < ActiveRecord::Base
	extend FriendlyId
	#friendly_id :title, use: [:slugged, :globalize]
	friendly_id :title, use: :slugged

	#active_admin_translates :title, :body, :slug do
	active_admin_translates :title, :body do
		validates_presence_of :title
	end
end
