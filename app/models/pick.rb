# frozen_string_literal: true

class Pick < ApplicationRecord
  belongs_to :player
  validates_presence_of :player, presence: true

  belongs_to :draft
  validates_presence_of :draft, presence: true

  after_create_commit { broadcast_prepend_to 'picks' }
  after_update_commit { broadcast_replace_to 'picks' }
  after_destroy_commit { broadcast_remove_to 'picks' }
end
