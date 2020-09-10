class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :conceptionDate
      t.text :content, array: true

      t.timestamps
    end
  end
end
