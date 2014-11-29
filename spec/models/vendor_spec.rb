require 'rails_helper'

describe Vendor do
	it { should validate_presence_of :name }
	it { should validate_presence_of :description }
	it { should have_many :contracts }
	it { should have_many(:products).through(:contracts) }
end