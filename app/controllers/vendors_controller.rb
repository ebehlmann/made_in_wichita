class VendorsController < ApplicationController
	def index
		@vendors = Vendor.all
	end

	def new
		@vendor = Vendor.new
	end

	def create
		@vendor = Vendor.new(params[:vendor])
		if @vendor.save
			flash[:notice] = "Vendor created."
			redirect_to vendors_path
		else
			render 'new'
		end
	end

	def show
		@vendor = Vendor.find(params[:id])
	end

#	def edit
#		@product = Product.find(params[:id])
#	end

#	def update
#		@product = Product.find(params[:id])
#		if @product.update(params[:product])
#			flash[:notice] = "Product updated."
#			redirect_to product_path(@product)
#		else
#			render 'edit'
#		end
#	end

#	def destroy
#		@product = Product.find(params[:id])
#		@product.destroy
#		flash[:notice] = "Product deleted."
#		redirect_to products_path
#	end
end