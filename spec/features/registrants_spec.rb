require 'spec_helper'

feature 'Registration Management' do
  
  background do
    @registrant = build(:registrant)
  end

  scenario 'submitting a new valid registration' do
    
    visit root_path
    click_link 'REGISTER HERE'
    expect{
    fill_in 'registrant[first_name]', with: @registrant.first_name
    fill_in 'registrant[last_name]', with: @registrant.last_name
    fill_in 'registrant[email]', with: @registrant.email
    fill_in 'registrant[phone_number]', with: '555-785-9012'
    choose '30 or under'
    select 'Your Mom', from: 'registrant_how_heard'
    check 'Vacation Property'
    click_button('Sign me up!')
    }.to change(Registrant,:count).by(1)
    expect(current_path).to eq root_path
    within ('#intro') do
      expect(page).to have_content 'Welcome to Alberta Beach Estates'
    end
    within ('.flash') do
      expect(page).to have_content "You're all set! Now you're in the know 
      for everything Alberta Beach!"
    end
  end

  scenario "doesn't submit new registration with invalid information" do
    visit root_path
    click_link 'REGISTER HERE'
    expect{
    fill_in 'registrant[first_name]', with: @registrant.first_name
    fill_in 'registrant[last_name]', with: @registrant.last_name
    fill_in 'registrant[email]', with: nil
    fill_in 'registrant[phone_number]', with: '555-785-9012'
    choose '30 or under'
    select 'Your Mom', from: 'registrant_how_heard'
    check 'Vacation Property'
    click_button('Sign me up!')
    }.to_not change(Registrant,:count)
    # save_and_open_page
    expect(current_path).to eq registrants_path
    within ('#registrant_first_name') do
      expect(page).to have_content
    end
  end

end