class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.timestamps
      t.column :username, :string, :null => false
      t.column :body, :text, :null => false
    end
  end
end
