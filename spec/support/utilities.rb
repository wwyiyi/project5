include ApplicationHelper
<<<<<<< HEAD
require "#{Rails.root}/spec/support/my_spec_checker.rb"
include MySpecChecker
require "#{Rails.root}/spec/support/my_spec_filler.rb"
include MySpecFiller
=======
def full_title(page_title)
  base_title = "Ruby on Rails Tutorial Sample App"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end

def valid_signin(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
end

def valid_signup
  fill_in "Name",         with: "Example User"
  fill_in "Email",        with: "user@example.com"
  fill_in "Password",     with: "foobar"
  fill_in "Confirm Password", with: "foobar"
end

def invalid_signup
  fill_in "Name",         with: "Foo Bar"
  fill_in "Email",        with: "foo@invalid"
  fill_in "Password",     with: ""
  fill_in "Confirm Password", with: ""
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba

def sign_in(user, options={})
  if options[:no_capybara]
    # Sign in when not using Capybara.
    remember_token = User.new_remember_token
    cookies[:remember_token] = remember_token
<<<<<<< HEAD
    user.update_attribute(:remember_token, User.digest(remember_token))
=======
    user.update_attribute(:remember_token, User.hash(remember_token))
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
  else
    visit signin_path
    fill_in "Email",    with: user.email
    fill_in "Password", with: user.password
    click_button "Sign in"
  end
<<<<<<< HEAD
end
=======
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

RSpec::Matchers.define :have_success_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-success', text: message)
  end
end
>>>>>>> 5f197a9652eb58b8dce3b0670f809b27bd0a85ba
