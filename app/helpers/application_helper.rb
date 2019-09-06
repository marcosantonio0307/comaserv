module ApplicationHelper

	def date_br(date)
		if date != nil
			date = date.strftime("%d/%m/%Y")
		end
	end
end
