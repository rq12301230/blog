class InlineImage < ActiveRecord::Base
  
  attr_accessible :image
  #validates_presence_of :image
  
  has_attached_file :image, :styles => { :medium => "600x300#", :thumb => "100x50#" },
                              :storage => :s3, :s3_credentials => "#{Rails.root}/config/s3.yml",
                              :path => "stream_images/:attachment/:id/:style.:extension", :s3_protocol => "http"
end
