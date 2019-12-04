class CartItemsController < ApplicationController

	def index
		@cart = CartItem.all
		render json: @cart
	end

	def create
		# byebug
		@cart = CartItem.create(create_cart_items_params)

		if @cart.valid?
			render json: @cart
		else
			render json: {errors: @cart.errors.full_messages}, status: 401
		end
	end

private

	def create_cart_items_params
		params.permit(:user_id, :item_id)
	end

end
