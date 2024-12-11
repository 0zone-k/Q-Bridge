class AddDepartmentToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_reference :questions, :department, null: false, foreign_key: true
  end
end
