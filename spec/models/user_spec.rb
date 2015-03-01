require 'rails_helper'

describe User do
	def setup
		@user = User.new(name: "Example User", email: "user@example.com")
	end

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:email) }

	it { should ensure_length_of(:name).is_at_most(50) }
	it { should ensure_length_of(:email).is_at_most (255) }
end
