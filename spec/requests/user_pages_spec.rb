require 'rails_helper'

RSpec.describe "UserPages", type: :request do
  subject { page }

  describe "GET /signup" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
