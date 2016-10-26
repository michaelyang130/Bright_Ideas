class Like < ApplicationRecord
  belongs_to :user
  belongs_to :idea
  validates :user, uniqueness: { scope: :idea}
end
