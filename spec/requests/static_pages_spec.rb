require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  subject { page }

  describe "GET /static_pages/home" do
    before { visit root_path }

    it { should have_content('Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "GET /static_pages/help" do
    before do
      visit help_path
    end

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "GET /static_pages/about" do
    before do
      visit about_path
    end

    it { should have_content('About Us') }
    it { should have_title(full_title('About')) }
  end

  describe "GET /static_pages/contact" do
    before do
      visit contact_path
    end

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end
end
