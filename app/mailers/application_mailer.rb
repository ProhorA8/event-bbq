class ApplicationMailer < ActionMailer::Base
  # обратный адрес всех писем по умолчанию
  default from: 'hi@event-by.ru'

  # Задаем макет для всех писем
  layout 'mailer'
end
