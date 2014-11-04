require 'file_size_validator'
class Resume < ActiveRecord::Base
	before_save :image_upload
	mount_uploader :resume, ResumeImageUploader
	mount_uploader :profile_pic, ProfilePicUploader
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :resume, presence: true,
		:file_size => { 
	      :maximum => 5.megabytes.to_i 
	    }
	validates :profile_pic,
		:file_size => { 
	      :maximum => 2.megabytes.to_i 
	    }
	def image_upload
 
	end
end
