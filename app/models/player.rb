# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :league
  belongs_to :team
  has_many :picks

  def self.by_league(id)
    Player.where(league: id)
  end
end
