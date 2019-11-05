require 'pg'

class Bookmark
  def initialize

  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end
    result = conn.exec("SELECT * FROM bookmarks;")
    result.map { |bm| bm['url'] }
  end
end
