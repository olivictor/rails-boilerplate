# == Schema Information
#
# Table name: post_categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PostCategory < ActiveRecord::Base
  has_many :posts

  extend FriendlyId
  friendly_id :name, use: :slugged
end
