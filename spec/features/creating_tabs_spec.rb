require 'spec_helper'

feature 'Creating Tabs' do
  scenario 'can create a tab' do
    visit '/'

    click_link 'New Tab'

    fill_in 'Title', with: 'Son of Sam'
    fill_in 'Notes', with: 'This is pretty easy.'
    fill_in 'Body', with: "Somethin's happenin' don't speak too soon"
    click_button 'Create Tab'

    expect(page).to have_content('Tab has been created.')
  end
end
