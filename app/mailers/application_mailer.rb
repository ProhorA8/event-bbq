class ApplicationMailer < ActionMailer::Base
  # обратный адрес всех писем по умолчанию
  default from: 'gp.emerald2020@gmail.com'

  # Задаем макет для всех писем
  layout 'mailer'
end
