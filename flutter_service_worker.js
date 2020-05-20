'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "assets/AssetManifest.json": "02a478dd88d636ed0fa734314634535e",
"assets/FontManifest.json": "01700ba55b08a6141f33e168c4a6c22f",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/images/1.jpg": "788e42c83194233858fbcafda9c0cc86",
"assets/images/2.jpg": "d452c9952cc42aaea87ba771a1b6a6a3",
"assets/images/3.png": "bb77b20054fc44b68ac0a5bbc2f6be0a",
"assets/images/4.jpeg": "f7bff1ced0b8cdec2a9c7835a0e9b697",
"assets/images/5.png": "695013697510ba226bc84545665bd521",
"assets/images/dolphin-edited.jpg": "e2c1a088ccbc279299dd33037bf8643c",
"assets/images/guitar.gif": "cb028b1a1a1944bb8836fa7046b47bb5",
"assets/images/profile.png": "d32a5185451c9b5e154d620e68e43a8b",
"assets/images/vp3.jpg": "6dbb4b7907adde8dfee097ccc9e0f631",
"assets/LICENSE": "110ff6ca58fd6a9849847c1a2c4b6256",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"index.html": "2def70cdfb9efbc99017bc85e0c5e804",
"/": "2def70cdfb9efbc99017bc85e0c5e804",
"main.dart.js": "f740442a6950e86ec170de1fe3229258",
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
