class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :university_name
      t.float :final_score

      t.timestamps null: false
    end
  end
end
