class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|

      t.references :user ,null: false
      t.references :question ,null: false
      t.text :answer , null: false

      t.timestamps
    end
  end
end
