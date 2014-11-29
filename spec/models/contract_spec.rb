require 'rails_helper'

describe Contract do
	it { should belong_to :product }
	it { should belong_to :vendor }
end