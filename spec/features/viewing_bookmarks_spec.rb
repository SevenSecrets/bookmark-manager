feature 'Viewing bookmarks' do

  let(:bookmark_manager) { double :BookmarkManager }

  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmark list' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com" && "http://www.google.com" && "http://www.destroyallsoftware.com"
  end
end
