require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      conn = PG.connect(dbname: 'bookmark_manager_test')
      Bookmark.create(url: 'http://www.makersacademy.com')
      Bookmark.create(url: 'http://www.google.com')
      Bookmark.create(url: 'http://www.destroyallsoftware.com')

      bookmarks = Bookmark.all

      expect(bookmarks).to include "http://www.makersacademy.com" && "http://www.google.com" && "http://www.destroyallsoftware.com"
    end
  end
  describe '.create' do
    it 'creates a new bookmark' do
      Bookmark.create(url: 'http://www.testbookmark.com')
      expect(Bookmark.all).to include 'http://www.testbookmark.com'
    end
  end
end
