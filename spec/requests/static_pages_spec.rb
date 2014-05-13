require 'spec_helper'

<<<<<<< HEAD
describe "StaticPages" do
  subject { page }

=======
describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  subject { page }
  
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
<<<<<<< HEAD
    let(:heading)    { 'Home' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }

=======

    it { should have_selector('h1', text: 'Welcome to the Sample App') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
    
    describe "for signed-in users with one micropost" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        sign_in user
        visit root_path
      end
        it { should have_content('micropost')}
        it { should have_content(user.microposts.count)}
        specify { expect(user.microposts.count).to  eq 1} 
    end  
    
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

<<<<<<< HEAD
=======
      describe "should have sidebar with proper plural counts" do
        it { should have_content(user.microposts.count) }
        it {should have_content("microposts")}
        specify { expect(user.microposts.count).to  eq 2 }
      end

>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
<<<<<<< HEAD
=======
      
      it "should render the user's stat" do
        
      end
      
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
      describe "follower/following counts" do
        let(:other_user) { FactoryGirl.create(:user) }
        before do
          other_user.follow!(user)
          visit root_path
        end

        it { should have_link("0 following", href: following_user_path(user)) }
        it { should have_link("1 followers", href: followers_user_path(user)) }
      end
<<<<<<< HEAD

=======
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
    end
  end

  describe "Help page" do
<<<<<<< HEAD
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { 'Help' }

    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "Help"
    expect(page).to have_content("Help")
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_content("Sign up")
    click_link "Project5" 
    expect(page).to have_content("Home")
=======

    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do

    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_title(full_title('About Us')) }
  end

   describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title(full_title('Contact')) }
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to have_title(full_title('Contact'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to have_title(full_title('Sign up'))
    click_link "sample app"
    expect(page).to have_title(full_title(''))
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  end
end
