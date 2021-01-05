# frozen_string_literal: true

class Draft < ApplicationRecord
  validates :title, presence: true
  validates :league, presence: true
  after_create_commit { broadcast_prepend_to 'drafts' }
  after_update_commit { broadcast_replace_to 'drafts' }
  after_destroy_commit { broadcast_remove_to 'drafts' }
end
