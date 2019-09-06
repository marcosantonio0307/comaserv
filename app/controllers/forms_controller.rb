class FormsController < ApplicationController

	def new
		@form = Form.new(category: params[:category], name: params[:name], email: params[:email], 
		phone: params[:phone], company: params[:company], segment: params[:segment],
		description: params[:description], status: 'NOK')
		@form.save
		redirect_to forms_confirm_path
	end

	def completed
		@form = Form.find(params[:id])
		@form.update(status: 'OK')

		if @form.category == 'doubt'
			redirect_to admin_doubts_open_path, notice: 'Duvida Respondida!'
		elsif @form.category == 'budget'
			redirect_to admin_budgets_open_path, notice: 'Orçamento Respondido!'
		end
	end

	def show
		@form = Form.find(params[:id])
	end
end
