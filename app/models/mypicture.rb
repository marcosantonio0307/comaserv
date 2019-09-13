class Mypicture < ApplicationRecord
	has_many_attached :files, dependent: :destroy
end
