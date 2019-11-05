feature 'Viewing bookmarks' do

  let(:bookmark_manager) { double :BookmarkManager }

  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content "Bookmark Manager"
  end

  scenario 'viewing the bookmark list' do
    conn = PG.connect(dbname: 'bookmark_manager_test')

    conn.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
    conn.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    conn.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit('/bookmarks')

    expect(page).to have_content "http://www.makersacademy.com" && "http://www.google.com" && "http://www.destroyallsoftware.com"
  end
end
