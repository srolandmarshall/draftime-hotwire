# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :league
  belongs_to :team
end
