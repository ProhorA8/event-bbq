class Photo < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :event, presence: true
  validates :user, presence: true

  # Добавляем аплоадер фотографий, чтобы заработал carrierwave
  mount_uploader :photo, PhotoUploader

  # Этот scope нужен, чтобы отделить реальные фотки от болванки см. events_controller
  scope :persisted, -> { where "id IS NOT NULL" }
end
