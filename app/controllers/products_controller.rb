class ProductsController < ApplicationController
#	before_filter :load_vendor

#	def load_vendor
#		@vendor = Vendor.find_by_id(params[:vendor_id])
#	end

	def index
		if params[:vendor_id]
			@products = Vendor.find(params[:vendor_id]).products
		else
			@products = Product.all
		end
	end

	def new
		if params[:vendor_id]
			vendor = Vendor.find(params[:vendor_id])
			@product = vendor.products.new
		else	
			@product = Product.new
		end
	end

	def create
		@product = Product.new(params[:product])
		if @product.save
			flash[:notice] = "Product created."
			if params[:vendor_id]							#This part is not working. Does not detect presence of vendor id
				vendor = Vendor.find(params[:vendor_id])
				@contract = Contract.new(:product_id => @product.id, :vendor_id => vendor.id)
				@contract.save
				redirect_to vendor_products_path
			else
				redirect_to products_path
			end
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
		@product = Product.find(params[:id])
		if @product.update(params[:product])
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
		redirect_to products_path
	end
end