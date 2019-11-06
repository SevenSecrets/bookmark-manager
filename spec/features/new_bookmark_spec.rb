feature 'new bookmark' do
  scenario 'add a new bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: "http://testsite.com")
    click_button('Submit')
    expect(page).to have_content "http://testsite.com"
  end
end
