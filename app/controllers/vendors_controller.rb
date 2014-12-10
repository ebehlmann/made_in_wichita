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

	def edit
		@vendor = Vendor.find(params[:id])
	end

	def update
		@vendor = Vendor.find(params[:id])
		if @vendor.update(params[:vendor])
			flash[:notice] = "Vendor updated."
			redirect_to vendor_path(@vendor)
		else
			render 'edit'
		end
	end

	def destroy
		@vendor = Vendor.find(params[:id])
		@vendor.destroy
		flash[:notice] = "Vendor deleted."
		redirect_to vendors_path
	end
end