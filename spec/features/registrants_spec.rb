require 'spec_helper'

feature 'Registration Management' do
  scenario 'submitting a new registration' do
    
    registrant = build(:registrant)

    visit root_path
    click_link 'REGISTER HERE'
    expect{
    fill_in 'registrant[first_name]', with: registrant.first_name
    fill_in 'registrant[last_name]', with: registrant.last_name
    fill_in 'registrant[email]', with: registrant.email
    fill_in 'registrant[phone_number]', with: '555-785-9012'
    choose '30 or under'
    select 'Your Mom', from: 'registrant_how_heard'
    check 'Vacation Property'
    click_button('Sign me up!')
    }.to change(Registrant,:count).by(1)
    expect(current_path).to eq root_path
    within ('.intro') do
      expect(page).to have_content 'Welcome to Alberta Beach Estates'
    end
  end
end