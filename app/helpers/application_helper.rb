module ApplicationHelper
  # Возвращает путь к аватарке данного юзера
  def user_avatar(user)
    if user.avatar?
      user.avatar.url
    else
      asset_pack_path('media/images/user.png')
    end
  end

  # Аналогично user_avatar, только возвращает мини версию
  def user_avatar_thumb(user)
    if user.avatar.file.present?
      user.avatar.thumb.url
    else
      asset_pack_path('media/images/user.png')
    end
  end

  # Возвращает адерс рандомной фотки события, если есть хотя бы одна. Либо ссылку на дефолтную картинку.
  def event_photo(event)
    photos = event.photos.persisted

    if photos.any?
      photos.sample.photo.url
    else
      asset_pack_path('media/images/event.jpg')
    end
  end

  # Аналогично event_photo, только возвращает мини версию
  def event_thumb(event)
    photos = event.photos.persisted

    if photos.any?
      photos.sample.photo.thumb.url
    else
      asset_pack_path('media/images/event_thumb.jpg')
    end
  end

  # Хелпер для иконок font-awesome
  def fa_icon(icon_class)
    content_tag 'span', '', class: "fa fa-#{icon_class} text-danger"
  end
end
