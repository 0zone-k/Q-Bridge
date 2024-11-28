class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|

      t.string :title ,             null: false
      t.text :content ,        null: false
      t.integer :category_id,        null: false
      t.datetime :deadline,        null: false
      t.references :user ,          null: false, foreign_key: true
      t.integer :affilation_id, null: false


      t.timestamps
    end
  end
end
