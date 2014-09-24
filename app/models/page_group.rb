# == Schema Information
#
# Table name: page_groups
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PageGroup < ActiveRecord::Base
  has_many :pages
  
  extend FriendlyId
  friendly_id :title, use: :slugged

end

