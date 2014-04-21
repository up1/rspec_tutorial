#burger_spec.rb
require 'spec_helper'

describe Burger do

	describe "#apply_ketchup" do
		context  "with ketchup" do
			it "sets the ketchup flag to true" do
				@burger = Burger.new(:ketchup => true)
				@burger.apply_ketchup
				@burger.has_ketchup_on_it?.should be_true
			end
		end

		context  "without ketchup" do
			it "sets the ketchup flag to false" do
				@burger = Burger.new(:ketchup => false)
				@burger.apply_ketchup
				@burger.has_ketchup_on_it?.should be_false
			end
		end
	end
end