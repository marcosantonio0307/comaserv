class FileUploadsController < ApplicationController

	def new
		@picture = Mypicture.find(params[:mypicture_id])
	end

	def create
		@picture = Mypicture.find(params[:mypicture_id])
		@picture.files.attach(params[:mypicture][:files])
		redirect_to picture_path(@picture)
	end

	def destroy
		@picture = Mypicture.find(params[:mypicture_id])
		@picture.files.find(params[:id]).purge
		redirect_to picture_path(@picture)
	end
end
