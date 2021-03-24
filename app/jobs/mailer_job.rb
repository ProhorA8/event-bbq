class MailerJob < ApplicationJob
  queue_as :default

  def perform(object)
    event = object.event
    all_emails = (event.subscriptions.map(&:user_email) + [event.user.email]).uniq
    all_emails.delete(object.user&.email)

    case object
    when Subscription
      EventMailer.subscription(event, object).deliver_later
    when Comment
      all_emails.each do |email|
        EventMailer.comment(event, object, email).deliver_later
      end
    when Photo
      all_emails.each do |email|
        EventMailer.photo(event, object, email).deliver_later
      end
    end
  end
end
