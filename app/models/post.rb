class Post < ApplicationRecord
  extend Mobility
  translates :title, locale_accessors: [:en, :he]
end
