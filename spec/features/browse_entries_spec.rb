require_relative './web_helper.rb'

feature 'browse entry title list' do
  scenario 'shows list of all entry titles' do
    add_new_entry('Test Title', 'Test Content')
    visit('/browse')
    expect(page).to have_content('Test Title')
  end

  scenario 'shows content when user clicks on title' do
    add_new_entry('Test Title', 'Test Content')
    visit('/browse')
    click_link "Test Title"
    expect(page).to have_content 'Test Content'
    expect(page).not_to have_content 'Sinatra'
  end
end
