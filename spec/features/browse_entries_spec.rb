require_relative './web_helper.rb'

feature 'browse entry title list' do
  scenario 'shows list of all entry titles' do
    add_new_entry('Test Title', 'Test Content')
    visit('/browse')
    expect(page).to have_content('Test Title')
  end
end
