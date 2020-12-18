feature 'adding an entry' do
  scenario 'user can add entry to diary' do
    visit('/new_entry')
    fill_in 'title', with: 'fake title'
    fill_in 'content', with: 'fake content'
    click_button 'Add New Entry'
    expect(page).to have_text 'fake title'
  end
end
