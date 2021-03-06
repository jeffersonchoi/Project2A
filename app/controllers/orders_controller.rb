class OrdersController < ApplicationController

	def index
		@orders = Order.all
	end

	def show
		@orderline = Orderline.find(params[:id])
		@user = @orderline.order.user
		# @users = []
		# @orderline.items.each do |item|
		# 	@users << item.user.first_name
		# end

	end

	def new
		@orderline = Orderline.new
	end

	def create
		 @order = order.new(user_params)

		if @order.save
		  redirect_to orders_path
		else
		  render :new
		end
	end

	def edit
		@order = order.find(params[:id])
	end

	def update
		@order = order.find(params[:id])

		if @order.update_attributes(order_params)
		redirect_to orders_path
		else
		render :edit
		end
	end

	def destroy
		@order = order.find(params[:id])
		@order.destroy
		redirect_to orders_path
	end

private
	def order_params
	  params.require(:order).permit(:user_id, :created_at)
	end


end
