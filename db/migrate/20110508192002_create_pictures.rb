class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :uid
      t.string :name
      t.string :gender

      t.timestamps
    end
  end
end
