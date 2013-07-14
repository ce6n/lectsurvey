class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.string :term
      t.text :comment
      t.integer :active

      t.timestamps
    end
  end
end
