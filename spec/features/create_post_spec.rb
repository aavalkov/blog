require 'spec_helper'

describe 'the add a new post process' do
  it 'adds a new post when the name and text are entered' do
    visit '/login'
    user = User.create(:email => 'user@example.com', :password => 'password', :password_confirmation => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log In'
    page.should have_content 'Code Tips'
    visit 'posts/new'
    fill_in 'post_name', :with => 'Lesson 1'
    fill_in 'post_article', :with => 'This is some example text'
    click_button 'Create Post'
    page.should have_content 'Saved'
  end
end
