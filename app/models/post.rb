class Post < ActiveRecord::Base

  include PgSearch

  pg_search_scope :search_for, against: %i(title body)
end
