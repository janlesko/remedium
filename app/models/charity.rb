class Charity < ApplicationRecord
  belongs_to :user
  has_attachments :photos, maximum: 10
  has_many :items
  has_many :transactions

  def calculate_goal
    items = self.items
    goal = 0
    items.each do |item|
      total = item.price * item.quantity
      goal += total
    end
    goal
  end
end
