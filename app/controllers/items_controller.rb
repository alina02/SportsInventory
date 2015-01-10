class ItemsController < ApplicationController

	
	def new
		@item = Item.new
	end

	def index
		@items = Item.all
	end

	def create
		
		items = params.slice('item_name', 'category')
		@item = Item.find_or_create_by_item_name(params[:item_name])
		@item.save
		@brand = Brand.find_or_create_by_brand_name(params[:brand_name])
		@item.brands << @brand unless @item.brands.include?(@brand)
		price_params = params.slice('cost', 'quantity')
		@price = @item.prices.where(brand_id: @brand.id).first
		if @price
			@price.quantity += params[:quantity].to_i
		else
			@price = Price.new(price_params)
			@price.brand = @brand
			@price.item = @item
		end
		@price.save

		redirect_to items_path
	end

	def search
		# binding.pry
	end

	def sell

	end


end
