class MypicturesController < ApplicationController

	def index
		@pictures = Mypicture.all
	end

	def create
		values = params.require(:mypicture).permit!
		@picture = Mypicture.create values

		redirect_to picture_path(@picture), notice: 'Album criado com sucesso!'
	end

	def show
		@picture = Mypicture.find(params[:id])
	end
end
