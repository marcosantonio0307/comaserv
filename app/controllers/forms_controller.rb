class FormsController < ApplicationController

	before_action :new_form, only:[:budget, :doubt, :work]

	def create
		values = params.require(:form).permit!
		@form = Form.create values
		@form.update(category: params[:category], status: 'NOK')

		if params[:files] != nil
			@form.files.attach(params[:form][:files])
		end
		
		redirect_to forms_confirm_path
	end

	def completed
		@form = Form.find(params[:id])
		@form.update(status: 'OK')

		if @form.category == 'doubt'
			redirect_to admin_doubts_open_path, notice: 'Duvida Respondida!'
		elsif @form.category == 'budget'
			redirect_to admin_budgets_open_path, notice: 'Orçamento Respondido!'
		elsif @form.category == 'resume'
			redirect_to admin_resumes_open_path, notice: 'Curriculo Visto!'
		end
	end

	def show
		@form = Form.find(params[:id])
	end

	private

	def new_form
		@form = Form.new
	end
end
