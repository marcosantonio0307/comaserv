class AdminController < ApplicationController
	before_action :authenticate_user!

	def courses
		@courses = Course.all
	end

	def new_course
		@course = Course.new
	end

	def edit_course
		@course = Course.find(params[:id])
	end

	def mypictures
		@pictures = Mypicture.all
	end

	def new_picture
		@picture = Mypicture.new
	end

	def edit_picture
		@picture = Mypicture.find(params[:id])
	end

	def show_picture
		@picture = Mypicture.find(params[:id])
	end

	def doubts_open
		@forms = Form.where(category: 'doubt', status: 'NOK')
		@title = 'DUVIDAS EM ABERTO'
		render 'form'
	end

	def doubts_closed
		@forms = Form.where(category: 'doubt', status: 'OK')
		@title = 'DUVIDAS RESPONDIDAS'
		render 'form'
	end

	def budgets_open
		@forms = Form.where(category: 'budget', status: 'NOK')
		@title = 'ORÇAMENTOS EM ABERTO'
		render 'form'
	end

	def budgets_closed
		@forms = Form.where(category: 'budget', status: 'OK')
		@title = 'ORÇAMENTOS RESPONDIDOS'
		render 'form'
	end

	def resumes_open
		@forms = Form.where(category: 'resume', status: 'NOK')
		@title = 'NOVOS CURRICULOS'
		render 'form'
	end

	def resumes_closed
		@forms = Form.where(category: 'resume', status: 'OK')
		@title = 'CURRICULOS ARQUIVADOS'
		render 'form'
	end

	def show_form
		@form = Form.find(params[:id])
	end
end
