class Content < ApplicationRecord
  validates :text, presence: true
end