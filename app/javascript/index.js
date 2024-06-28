document.addEventListener('DOMContentLoaded', () => {
  if (document.getElementById('map')) {
    initMap();
  }
});

function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: -34.397, lng: 150.644},
    zoom: 8
  });

  fetch('/photos.json')
    .then(response => response.json())
    .then(data => {
      data.forEach(photo => {
        var marker = new google.maps.Marker({
          position: {lat: photo.latitude, lng: photo.longitude},
          map: map,
          title: photo.title
        });

        var infowindow = new google.maps.InfoWindow({
          content: `<h3>${photo.title}</h3><p>${photo.description}</p><img src="${photo.image_url}" alt="${photo.title}" style="width:100px;height:100px;"/>`
        });

        marker.addListener('click', () => {
          infowindow.open(map, marker);
        });
      });
    });
}