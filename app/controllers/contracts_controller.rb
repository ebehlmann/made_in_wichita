class ContractsController < ApplicationController
	def new
		vendor = Vendor.find(params[:vendor_id])
		@contract = vendor.contracts.new
		render 'new'
	end

	def create
		@contract = Contract.new(params[:contract])
		@vendor = Vendor.find(params[:vendor_id])
		if @contract.save
			flash[:notice] = "Product saved to your store."
		else
			render 'new'
		end
	end
end