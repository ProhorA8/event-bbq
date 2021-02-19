ymaps.ready(init);
var myMap;

function init(){
  let element = document.getElementById('map');

  if (element != null) {

  address = element.getAttribute('data-address');

  myMap = new ymaps.Map("map", {
    center: [53.9, 27.5667],
    zoom: 10,
      // убираем масштабирование
    behaviors: ['drag', 'dblClickZoom', 'rightMouseButtonMagnifier', 'multiTouch']
  });

  myGeocoder = ymaps.geocode(address);

  myGeocoder.then(
    function (res) {
      coordinates = res.geoObjects.get(0).geometry.getCoordinates();

      myMap.geoObjects.add(
        new ymaps.Placemark(
          coordinates,
          {iconContent: address},
          {preset: 'islands#blueStretchyIcon'}
        )
      );

      myMap.setCenter(coordinates);
      myMap.setZoom(15);
    }, function (err) {
      alert('Ошибка при определении местоположения');
    }
  );
  }
}
