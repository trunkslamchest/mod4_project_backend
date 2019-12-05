class CartItemsController < ApplicationController

	def index
		@cart = CartItem.all
		render json: CartItemsSerializer.new(@cart).serialized_json, include: "**"
	end

	def show
		@cart_item = CartItem.find(params[:id])

		render json: @cart_item
	end

	def create
		@cart = CartItem.create(create_cart_items_params)

		if @cart.valid?
			render json: @cart
		else
			render json: {errors: @cart.errors.full_messages}, status: 401
		end
	end

	def destroy
		@cart_item = CartItem.find(params[:id])

		@cart_item.destroy

		render json: @cart_item
	end

private

	def create_cart_items_params
		params.permit(:user_id, :item_id, :cart_quantity)
	end

end
