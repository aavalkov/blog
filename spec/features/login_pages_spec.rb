require 'spec_helper'
  describe "the sign up process" do
    it "signs up a new user when all information is entered" do
      visit '/signup'
      fill_in 'Email', :with => "test@test.com"
      fill_in 'Password', :with => "test"
      fill_in 'Password confirmation', :with => "test"
      click_button 'Create User'
      page.should have_content 'successful'
  end

   it "doesn't sign up a user if information is missing" do
      visit '/signup'
      fill_in 'Email', :with => "test@test.com"
      fill_in 'Password', :with => "test"
      fill_in 'Password confirmation', :with => ""
      click_button 'Create User'
      page.should have_content 'errors'
  end
end
