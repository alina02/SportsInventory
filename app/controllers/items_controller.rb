class ItemsController < ApplicationController

	
	def new
		@item = Item.new
	end

	def create
		
		@item = Item.new(:item_name => params[:item_name])
		# binding.pry
		@item.save

		redirect_to items_path
	end

	def search
		# binding.pry
	end

	def sell

	end


end
