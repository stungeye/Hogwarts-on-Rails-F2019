class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
