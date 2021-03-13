class ApplicationController < ActionController::Base
  # Позволяем использовать возможности пандита во всех контроллерах
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Настройка для работы девайза при правке профиля юзера
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Хелпер метод, доступный во вьюхах
  helper_method :current_user_can_edit?

  # Настройка для девайза — разрешаем обновлять профиль, но обрезаем
  # параметры, связанные со сменой пароля.
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :account_update,
      keys: [:password, :password_confirmation, :current_password]
    )

    devise_parameter_sanitizer.permit(
      :sign_up, keys: [:name, :access_email]
    )
  end

  def current_user_can_edit?(model)
    # Если у модели есть юзер и он залогиненный, пробуем у модели взять .event и
    # если он есть, проверяем его юзера на равенство current_user.
    user_signed_in? && (
    model.user == current_user ||
      (model.try(:event).present? && model.event.user == current_user)
    )
  end

  private

  def user_not_authorized
    flash[:alert] = t('pundit.not_authorized')
    redirect_to(request.referrer || root_path)
  end
end
