class Issue < ApplicationRecord
  belongs_to :program
  belongs_to :article_of_clothing
  belongs_to :person
end
