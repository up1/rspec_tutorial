#burger_spec.rb
require 'spec_helper'

describe Burger do

	describe "#apply_ketchup" do
		subject { burger }
		before  { burger.apply_ketchup }

		context  "with ketchup" do
			let(:burger) { Burger.new(:ketchup => true) }
			
			it "sets the ketchup flag to true" do		
				burger.has_ketchup_on_it?.should be_true
			end
		end

		context  "without ketchup" do
			let(:burger) { Burger.new(:ketchup => false) }

			it "sets the ketchup flag to false" do				
				burger.has_ketchup_on_it?.should be_false
			end
		end
	end
end