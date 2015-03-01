require 'rails_helper'

describe User do
	def setup
		@user = User.new(name: "Example User", email: "user@example.com")
	end

	it { should validate_presence_of(:name) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:password) }

	it { should ensure_length_of(:name).is_at_most(50) }
	it { should ensure_length_of(:email).is_at_most (255) }
	it { should ensure_length_of(:password).is_at_least(6) }

	it { should allow_value('ebehlmann@gmail.com').for(:email) }
	it { should allow_value('foo@bar.blah').for(:email) }
	it { should_not allow_value('user@example,com').for(:email) }
	it { should_not allow_value('user_at_example.com').for(:email) }
	it { should_not allow_value('user@example').for(:email) }

	it { should validate_uniqueness_of(:email) }
end
