require 'spec_helper'

describe Book do

	before :each do
    	@book = Book.new "Title", "Author", :category
	end

	describe "#new" do
		it "take three parameters and return a Book object" do
			@book.should be_an_instance_of Book
		end
	end

end