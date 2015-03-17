require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  let(:title) { "Ruby on Rails Tutorial Sample App" }

  describe "GET /static_pages/home" do
    before do
      visit '/static_pages/home'
    end

    it "should have the content 'Sample App'" do
      expect(page).to have_content('Sample App')
    end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{title} | Home")
    end
  end

  describe "GET /static_pages/help" do
    before do
      visit '/static_pages/help'
    end

    it "should have the content 'Help'" do
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      expect(page).to have_title("#{title} | Help")
    end
  end

  describe "GET /static_pages/about" do
    before do
      visit '/static_pages/about'
    end

    it "should have the content 'About us'" do
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      expect(page).to have_title("#{title} | About")
    end
  end
end
