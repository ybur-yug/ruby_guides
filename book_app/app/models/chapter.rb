class Chapter < ActiveRecord::Base
  has_many :sections

  validates :title, presence: true
end
