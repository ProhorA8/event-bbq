class ApplicationMailer < ActionMailer::Base
  # обратный адрес всех писем по умолчанию
  default from: 'procustom4@gmail.com'

  # Задаем макет для всех писем
  layout 'mailer'
end
