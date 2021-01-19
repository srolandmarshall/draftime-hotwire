# frozen_string_literal: true

class Draft < ApplicationRecord
  validates :title, presence: true
  after_create_commit { broadcast_prepend_to 'drafts' }
  after_update_commit { broadcast_replace_to 'drafts' }
  after_destroy_commit { broadcast_remove_to 'drafts' }

  belongs_to :league
  validates_presence_of :league, presence: true
end
