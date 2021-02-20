// Скрываем форму добавления фотографии и показываем её по клику на ссылку
$(function(){
    $('.event-photo-form').hide();

    $('.event-photo-form-link').click(function(){
        $('.event-photo-form').slideToggle(300);
        return false;
    });
});
