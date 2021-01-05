class CreateDrafts < ActiveRecord::Migration[6.1]
  def change
    create_table :drafts do |t|
      t.string :title
      t.string :league

      t.timestamps
    end
  end
end
