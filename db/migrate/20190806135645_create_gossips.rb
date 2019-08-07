class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title, optional: true
      t.text :gossip_content, optional: true
      t.belongs_to :user, index:true
      t.timestamps
    end
  end
end
