class EventMailer < ApplicationMailer
  # Письмо о новой подписке для автора события
  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    mail to: event.user.email, subject: default_i18n_subject(event: event.title)
  end

  # Письмо о новом комментарии на заданный email
  def comment(event, comment, email)
    @comment = comment
    @event = event

    mail to: email, subject: default_i18n_subject(event: event.title)
  end

  # Письмо о новой фотографии на заданный email
  def photo(event, photo, email)
    @photo = photo
    @event = event
    @email = email

    mail to: email, subject: default_i18n_subject(event: event.title)
  end
end
