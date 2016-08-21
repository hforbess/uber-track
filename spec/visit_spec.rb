require "rails_helper"
feature 'User creates a foobar' do
  scenario 'they see the foobar on the page' do
    visit "/" 
   expect(page).to have_content "eConstructors" 
  end
end
