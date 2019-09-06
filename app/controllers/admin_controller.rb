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

	def doubts_open
		@forms = Form.where(category: 'doubt', status: 'NOK')

		render 'form'
	end

	def doubts_closed
		@forms = Form.where(category: 'doubt', status: 'OK')

		render 'form'
	end

	def budgets_open
		@forms = Form.where(category: 'budget', status: 'NOK')

		render 'form'
	end

	def budgets_closed
		@forms = Form.where(category: 'budget', status: 'OK')

		render 'form'
	end

	def resumes_open
		@forms = Form.where(category: 'resume', status: 'NOK')

		render 'form'
	end

	def resumes_closed
		@forms = Form.where(category: 'resume', status: 'OK')

		render 'form'
	end
end
