class CreateIssues < ActiveRecord::Migration[6.1]
  def change
    create_table :issues do |t|
      t.date :date_of_issue
      t.integer :program_number
      t.references :program, null: false, foreign_key: true
      t.references :article_of_clothing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
