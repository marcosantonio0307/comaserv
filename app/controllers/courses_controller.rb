class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def create
		values = params.require(:course).permit!
		@course = Course.create values

		if @course.save
			redirect_to admin_courses_path, notice: 'Curso Cadastrado!'
		end
	end

	def update
		@course = Course.find(params[:id])
		values = params.require(:course).permit!

		@course.update values

		redirect_to admin_courses_path, notice: 'Alteração Salva!'
	end

	def destroy
		id = params[:id]
		Course.destroy id

		redirect_to admin_courses_path, notice: 'Curso Excluído!'
	end

	def show
		@course = Course.find(params[:id])
	end
end
