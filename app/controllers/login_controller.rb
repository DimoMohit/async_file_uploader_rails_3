class LoginController < ApplicationController
	config.relative_url_root = ""
	def index
		render :index
	end
	def create
		begin
			respond_to do |format|
			    if remotipart_submitted? 
					begin
				    	first_name = params[:upload][:first_name]
				    	last_name = params[:upload][:last_name]
						puts params[:upload][:resume]
						@resume=Resume.create!( :first_name=>first_name,
							:last_name=>last_name,
							:profile_pic=>params[:upload][:profile_pic],
							:resume => params[:upload][:resume])
						@file_size=File.size(@resume.resume.path)
					rescue Exception=>e
						@error=e
					end
					render format.js
				end
			end
		rescue
			@error="Not Valid Format"
		end
	end
end
