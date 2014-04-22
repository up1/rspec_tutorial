require "spec_helper"

describe "Signup process" do

	before do
		visit 'https://showcase-eu.demo.venda.com'
		within('.js-login') { click_link('Log In / Register') }
		click_button('Continue')
	end
	
	context "success" do
		it "display success message" do
			page.should have_content "Add Billing Address"
			find("#title",:visible=>false).find("option[value='Miss']").click
			fill_in "fname", with: "Somkiat"
			fill_in "lname", with: "Puisungngoen"
			find("#cntrylist",:visible=>false).find("option[value='Zaire']").click
			fill_in "company", with: "SPRINT3R"
			fill_in "num", with: "123"
			fill_in "addr1", with: "ADDRESS 1"
			fill_in "addr2", with: "ADDRESS 2"
			fill_in "city", with: "Bangkok"
			fill_in "statetext", with: "Central"
			fill_in "zipc", with: "10400"
			fill_in "phone", with: "668696209"
			fill_in "usemail", with: "somkiat.p2@gmail.com"
			fill_in "uspswd", with: "mypassword"
			fill_in "uspswd2", with: "mypassword"
			find("#usxtgender",:visible=>false).find("option[value='Female']").click
			check('blkemail')
			check('blktrdcomm')
			click_button('Agree and Continue')
			page.should have_content "Somkiat Puisungngoen"
		end		
	end

end