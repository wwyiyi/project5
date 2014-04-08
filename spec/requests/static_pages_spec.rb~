require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Project 2" }

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Project5') }
    #it { should have_title("Ruby on Rails Tutorial Project 2") }
    it { should_not have_title('| Home') }
  end
end
