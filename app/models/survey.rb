class Survey < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 5 }
  validates :term, presence: true, length: { minimum: 5 }
end
