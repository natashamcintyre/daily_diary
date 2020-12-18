def add_new_entry(title, content)
  visit('/new_entry')
  fill_in 'title', with: title
  fill_in 'content', with: content
  click_button 'Add New Entry'
end
