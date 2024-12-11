class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.string :department ,             null: false
      t.timestamps
    end
  end
end
