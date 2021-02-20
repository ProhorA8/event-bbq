// Код, который цепляет плагин lightbox к объектам с аттрибутом data-toggle="lightbox"
// $(document).delegate('*[data-toggle="lightbox"]', 'click', function(event) {
//     event.preventDefault();
//     $(this).ekkoLightbox();
// });

// Скрываем форму добавления фотографии и показываем её по клику на ссылку
$(function(){
    $('.event-photo-form').hide();

    $('.event-photo-form-link').click(function(){
        $('.event-photo-form').slideToggle(300);
        return false;
    });
});
