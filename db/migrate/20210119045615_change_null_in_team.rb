# frozen_string_literal: true

class ChangeNullInTeam < ActiveRecord::Migration[6.1]
  def change
    change_column_null :teams, :players_id, true
  end
end
