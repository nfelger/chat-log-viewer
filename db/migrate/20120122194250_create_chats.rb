class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.timestamps
      t.column :name, :string, :null => false
      t.column :topic, :string
    end
  end
end
