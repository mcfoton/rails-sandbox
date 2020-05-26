class Post < ApplicationRecord
  extend Mobility
  translates :title
end
