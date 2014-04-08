class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
