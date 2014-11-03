class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params[:product])
		if @product.save
			flash[:notice] = "Product created."
			redirect_to @products_path
		else
			render 'new'
		end
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.new(params[:product])
		if @product.update
			flash[:notice] = "Product updated."
			redirect_to product_path(@product)
		else
			render 'edit'
		end
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:notice] = "Product deleted."
		redirect_to @products_path
	end
end