(function ($) {
  "use strict";
  var markerIcon = {
    anchor: new google.maps.Point(10, 16),
    url: "assets/img/marker.png",
  };

  var map = document.getElementById("map-main");
  if (typeof map != "undefined" && map != null) {
    google.maps.event.addDomListener(window, "load", mainMap);
  }

  function singleMap() {
    var myLatLng = {
      lng: $("#singleMap").data("longitude"),
      lat: $("#singleMap").data("latitude"),
    };
    var single_map = new google.maps.Map(document.getElementById("singleMap"), {
      zoom: 14,
      center: myLatLng,
      scrollwheel: false,
      zoomControl: false,
      mapTypeControl: false,
      scaleControl: false,
      panControl: false,
      navigationControl: false,
      streetViewControl: false,
      styles: [
        {
          featureType: "landscape",
          elementType: "all",
          stylers: [
            {
              color: "#f2f2f2",
            },
          ],
        },
      ],
    });
    var marker = new google.maps.Marker({
      position: myLatLng,
      map: single_map,
      icon: markerIcon,
      title: "Our Location",
    });
    var zoomControlDiv = document.createElement("div");
    var zoomControl = new ZoomControl(zoomControlDiv, single_map);

    function ZoomControl(controlDiv, single_map) {
      zoomControlDiv.index = 1;
      single_map.controls[google.maps.ControlPosition.RIGHT_CENTER].push(
        zoomControlDiv
      );
      controlDiv.style.padding = "5px";
      var controlWrapper = document.createElement("div");
      controlDiv.appendChild(controlWrapper);
      var zoomInButton = document.createElement("div");
      zoomInButton.className = "mapzoom-in";
      controlWrapper.appendChild(zoomInButton);
      var zoomOutButton = document.createElement("div");
      zoomOutButton.className = "mapzoom-out";
      controlWrapper.appendChild(zoomOutButton);
      google.maps.event.addDomListener(zoomInButton, "click", function () {
        single_map.setZoom(single_map.getZoom() + 1);
      });
      google.maps.event.addDomListener(zoomOutButton, "click", function () {
        single_map.setZoom(single_map.getZoom() - 1);
      });
    }
  }
  var single_map = document.getElementById("singleMap");
  if (typeof single_map != "undefined" && single_map != null) {
    google.maps.event.addDomListener(window, "load", singleMap);
  }
})(this.jQuery);
