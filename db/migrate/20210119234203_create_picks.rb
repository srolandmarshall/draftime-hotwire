class CreatePicks < ActiveRecord::Migration[6.1]
  def change
    create_table :picks do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.belongs_to :draft, null: false, foreign_key: true

      t.timestamps
    end
  end
end
