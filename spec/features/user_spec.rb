require 'spec_helper'

def create_user
  visit new_user_registration_path
    fill_in 'Email', with: 'bob@test.com'
    fill_in 'Password', with: '12345678'
    fill_in 'Password confirmation', with: '12345678'
    click_button 'Sign up'
end


feature 'signing up new users' do
  scenario 'add a new user with email and password on the sign up page' do
    create_user
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end

