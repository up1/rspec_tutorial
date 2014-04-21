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

	describe "#title" do
		it "return the correct title" do
			@book.title.should eql "Title"
		end
	end

	describe "#author" do
		it "retrun the correct author" do
			@book.author.should eql "Author"
		end
	end

	describe "#category" do
		it "retrun the correct category" do
			@book.category.should eql :category
		end
	end

end
