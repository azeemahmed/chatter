require_relative '../spec_helper'

describe "Static pages" do
	
	describe "Home page" do
	
		it "should have the h1 'Chatter App'" do
			visit '/static_pages/home'
			page.should have_selector('h1', :text => 'Chatter App')
		end
		
		it "should have the title 'Home'" do
			visit '/static_pages/home'
			page.should have_selector('title',
							:text => "Chatter Application | Home")
		end
	end					

	describe "Help page" do
	
		it "should have the h1 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end
		
		it "should have the title 'Help'" do
			visit '/static_pages/help'
			page.should have_selector('title',
							:text => "Chatter Application | Help")
		end
	end

	describe "About page" do
	
		it "should have the h1 'About Chatter'" do
			visit '/static_pages/about'
			page.should have_selector('h1', :text => 'About Chatter')
		end
		
		it "should have the title 'About Chatter'" do
			visit '/static_pages/about'
			page.should have_selector('title',
							:text => "Chatter Application | About")
		end					
	end

end