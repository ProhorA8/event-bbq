class Subscription < ApplicationRecord
  belongs_to :event
  belongs_to :user, optional: true

  before_validation :access_email

  validates :event, presence: true

  # проверки выполняются только если user не задан (незареганные приглашенные)
  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  # для данного event_id один юзер может подписаться только один раз (если юзер задан)
  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }

  # для данного event_id один email может использоваться только один раз (если нет юзера, анонимная подписка)
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validate :user_created_event
  validate :user_email_exists, unless: -> { user.present? }

  def access_email
    if user.present?
      user.access_email
    else
      super
    end
  end

  # переопределяем если есть юзер, выдаем его имя, если нет – дергаем исходный переопределенный метод
  def user_name
    if user.present?
      user.name
    else
      super
    end
  end

  # переопределяем если есть юзер, выдаем его email, если нет – дергаем исходный переопределенный метод
  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  def user_created_event
    errors.add(:base, :user_created_event) if event.user == user
  end

  def user_email_exists
    errors.add(:user_email, :user_email_exists) if User.exists?(email: user_email)
  end
end
