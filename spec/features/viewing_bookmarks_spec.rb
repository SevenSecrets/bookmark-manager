feature 'Viewing bookmarks' do

  let(:bookmark_manager) { double :BookmarkManager }

  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmark list' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com" && "http://www.google.com" && "http://www.destroyallsoftware.com"
  end
end
