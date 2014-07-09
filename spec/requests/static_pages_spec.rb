require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Orsyp Expert Online Time Request'" do
      visit '/static_pages/home'
      expect(page).to have_content('Orsyp Expert Online Time Request')
    end
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Orsyp Expert Online Time Request | Home")
    end

  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  describe "Contact" do

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("Orsyp Expert Online Time Request | Contact")
    end
  end

end
