class ArticleOfClothing < ApplicationRecord
  belongs_to :brand
  paginates_per 10
end
