require 'spec_helper'

describe "Pages" do

	let(:base_title) { "Celestianfaces" }

  describe "Home page" do
    it "should have the content 'Celestianfaces'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/home'
      expect(page).to have_content('Celestianfaces')
      
    end

    it "should have the right title" do
    	visit '/pages/home'
    	expect(page).to have_title("#{base_title} | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/pages/help'
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
    	visit '/pages/help'
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
    	visit '/pages/about'
    	expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
