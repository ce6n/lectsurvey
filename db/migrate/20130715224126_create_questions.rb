class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :questiontext
      t.integer :questionclass
      t.references :survey, index: true

      t.timestamps
    end
  end
end
