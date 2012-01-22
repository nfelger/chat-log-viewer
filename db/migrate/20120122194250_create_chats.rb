class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|

      t.timestamps
      t.column :name, :string, :null => false
    end
  end
end
