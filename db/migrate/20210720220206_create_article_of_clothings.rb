class CreateArticleOfClothings < ActiveRecord::Migration[6.1]
  def change
    create_table :article_of_clothings do |t|
      t.string :type_of_garment
      t.string :colour
      t.string :description
      t.references :brand, null: false, foreign_key: true

      t.timestamps
    end
  end
end
