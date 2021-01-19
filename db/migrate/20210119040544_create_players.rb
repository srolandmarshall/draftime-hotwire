# frozen_string_literal: true

class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name
      t.belongs_to :league, null: false, foreign_key: true

      t.timestamps
    end
  end
end
