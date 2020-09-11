class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthdate
      t.string :bio
      t.string :imageURL
      
      t.timestamps
    end
  end
end
