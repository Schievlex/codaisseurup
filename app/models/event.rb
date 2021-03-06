class Event < ApplicationRecord
  belongs_to :user, optional: true
  has_many :photos, dependent: :destroy

  has_and_belongs_to_many :categories

  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  has_many :registrations, dependent: :destroy
  has_many :guests, through: :registrations, source: :user

  def bargain?
    price < 30
  end

  def self.order_by_price
    order :price
  end


end
