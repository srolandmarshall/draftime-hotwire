# frozen_string_literal: true

class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.belongs_to :league, null: false, foreign_key: true
      t.string :code
      t.string :full_name
      t.string :short_name
      t.references :players, null: false, foreign_key: true

      t.timestamps
    end
  end
end
