require "spec_helper"

describe "Login process" do
	
	before do
		#page.driver.browser.manage.window.maximize
		visit 'https://showcase-eu.demo.venda.com'
		within('.js-login') { click_link('Log In / Register') }
	end

	context "success" do
		it "display success message" do
			find(:xpath, "//div/input[@id='email']").set "somkiat.p@gmail.com"
			find(:xpath, "//div/input[@id='password']").set "mypassword"
			click_button "Log In Securely"
			page.should have_content 'My Account Information'
			page.should have_content 'Hello Somkiat Puisungngoen'
		end
	end

	context "failure" do
		it "display failure message" do
			find(:xpath, "//div/input[@id='email']").set "somkiat.p@gmail.com"
			find(:xpath, "//div/input[@id='password']").set "mypassword2"
			click_button "Log In Securely"
			page.should have_content 'Invalid user name / password'
		end
	end

end