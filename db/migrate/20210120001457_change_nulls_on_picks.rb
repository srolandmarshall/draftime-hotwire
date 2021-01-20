# frozen_string_literal: true

class ChangeNullsOnPicks < ActiveRecord::Migration[6.1]
  def change
    change_column_null :picks, :player_id, true
  end
end
