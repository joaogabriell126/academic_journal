class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.date :published_at
      t.string :area
      t.string :status
      t.text :abstract

      t.timestamps
    end
  end
end
