require 'pg'

class Bookmark
  def initialize

  end

  def self.all
    conn = PG.connect(dbname: 'bookmark_manager')
    result = conn.exec("SELECT * FROM bookmarks;")
    result.map { |bm| bm['url'] }
  end
end
