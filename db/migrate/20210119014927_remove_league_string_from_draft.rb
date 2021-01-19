# frozen_string_literal: true

class RemoveLeagueStringFromDraft < ActiveRecord::Migration[6.1]
  def change
    remove_column :drafts, :league
  end
end
