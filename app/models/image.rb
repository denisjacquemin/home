class Image < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :property
end
