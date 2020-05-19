'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "e2dcd74138037407c3a24477013cb5be",
"assets/FontManifest.json": "18eda8e36dfa64f14878d07846d6e17f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/dolphin%2520-%2520Copy.jpg": "b776d5f77e63c121d756a352ca6a45ca",
"assets/images/dolphin-edited.jpg": "e2c1a088ccbc279299dd33037bf8643c",
"assets/images/dolphin.jpg": "b776d5f77e63c121d756a352ca6a45ca",
"assets/images/dolphin.psd": "bcd25f007b1d1d76d4cf6d236ad9017b",
"assets/images/profile.jpg": "aa77e9b8d5cea22a6f032ae8781c4a56",
"assets/LICENSE": "12c0fb0b822acdfbada7d3c066ae9317",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5a37ae808cf9f652198acde612b5328d",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "2bca5ec802e40d3f4b60343e346cedde",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "2aa350bd2aeab88b601a593f793734c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "2def70cdfb9efbc99017bc85e0c5e804",
"/": "2def70cdfb9efbc99017bc85e0c5e804",
"main.dart.js": "2c877e3f05c897d14bdad58c0d23ac0b",
"manifest.json": "5a2c0526f1fe73e6f211bc7a9d15c210"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
