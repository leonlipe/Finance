class Account < ActiveRecord::Base
	belongs_to :bank
	has_many :movements
	has_many :parcialities
end
