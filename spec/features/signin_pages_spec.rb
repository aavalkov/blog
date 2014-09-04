require 'spec_helper'

describe "the signin process" do
  it "signs a user in who uses the right password" do
    visit '/login'
    user = User.create(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    page.should have_content 'Code Tips'
  end
end

