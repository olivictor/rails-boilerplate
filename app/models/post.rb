# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  body       :text
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
  belongs_to :post_category

  extend FriendlyId
  friendly_id :title, use: :slugged

  has_attached_file :attachment,
                    :styles => lambda{ |a|
                                  ["image/jpeg", "image/png", "image/jpg", "image/gif"].include?( a.content_type ) ? {
                                  :large =>   "500x500>" } : {}
                                 }

  validates_attachment_file_name :attachment, :matches => [/pdf\Z/]
end
