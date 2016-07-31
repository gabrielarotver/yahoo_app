class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :source_name
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
