class Dinosaur < ApplicationRecord
  belongs_to :valley

  validates :name, :age, presence: true
  validates :name, uniqueness: true

  validates :age, length: { maximum: 5 }
  validates :image_url, length: { maximum: 255 }, allow_blank: true

  scope :order_by_name, -> { order(:name) }

  def is_baby?
    age < 3
  end

end
