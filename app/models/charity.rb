class Charity < ApplicationRecord
  belongs_to :user
  has_attachments :photos, maximum: 10
  has_many :items
end
