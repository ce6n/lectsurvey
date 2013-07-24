class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5 }
  validates :term, presence: true, length: { minimum: 5 }
end
