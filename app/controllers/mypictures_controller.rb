class MypicturesController < ApplicationController

	def index
		@pictures = Mypicture.all
	end

	def create
		values = params.require(:mypicture).permit!
		@picture = Mypicture.create values

		redirect_to picture_path(@picture), notice: 'Album criado com sucesso!'
	end

	def update
		values = params.require(:mypicture).permit!
		@picture = Mypicture.find(params[:id])
		@picture.update values

		redirect_to picture_path(@picture), notice: 'Álbum atualizado com sucesso!'
	end

	def destroy
		id = params[:id]
		Mypicture.destroy id

		redirect_to admin_mypictures_path, notice: 'Álbum apagado com sucesso!'
	end

	def show
		@picture = Mypicture.find(params[:id])
	end
end
