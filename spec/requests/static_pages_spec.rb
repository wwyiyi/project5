require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do

    it "should have the content 'Home'" do
      visit root_path
      expect(page).to have_content('Home')
    end

    it "should have the base title" do
      visit root_path
      expect(page).to have_title("Project5")
    end
    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
    
  end
  
  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      expect(page).to have_title("Project5 | Help")
    end
  end
end
