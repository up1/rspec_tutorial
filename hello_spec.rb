describe Hash do

	before do
		@hash = Hash[{:hello => 'world'}]
	end

	it "should return a blank instance" do
    	Hash.new.should == {}
  	end

  	it "hash the correct information in a key" do
    	@hash[:hello].should == 'world'
  	end

  	it "hash the correct size" do
    	@hash.size.should == 1
  	end

end