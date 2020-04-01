'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "favicon.png": "5dcef449791fa27946b3d35ad8803796",
"manifest.json": "176e5b4e4d38d20fa178566b08965d34",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"assets/AssetManifest.json": "2fb39a38b7339c680f04b1f95669306e",
"assets/LICENSE": "954706ef951b9553ecb95d1a66a0f589",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"assets/images/dice5.png": "ae4a1c88865e22a54c7aeb91f18db784",
"assets/images/dice4.png": "3c7e0c5d05aeaa567bb90faf18f79f38",
"assets/images/dice6.png": "2d7642d5229bb083f5e59cf1cee4aa28",
"assets/images/dice1.png": "5e0580134cde323cc6e2d54254b1a605",
"assets/images/dice2.png": "524559a3d0e61efa7b8a165bd2bad0da",
"assets/images/dice3.png": "683bc715f147a48b2e2dcabf2d573a05",
"assets/fonts/Pacifico-Regular.ttf": "9b94499ccea3bd82b24cb210733c4b5e",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/fonts/Source_Sans_Pro/SourceSansPro-ExtraLight.ttf": "23a4c2deef3a0cc9b40b429ad7320a18",
"assets/fonts/Source_Sans_Pro/SourceSansPro-Black.ttf": "9ded577f93b24331f4faadfc5f834ae6",
"assets/fonts/Source_Sans_Pro/SourceSansPro-Italic.ttf": "3d7cb86547ce5075625915f2e86d0687",
"assets/fonts/Source_Sans_Pro/SourceSansPro-Bold.ttf": "8669b8706bbbdd1482e2fccc4ed96850",
"assets/fonts/Source_Sans_Pro/SourceSansPro-Light.ttf": "81cd217e4a8160a930c6d5fb8d1e8e82",
"assets/fonts/Source_Sans_Pro/SourceSansPro-SemiBold.ttf": "83476a890be79f84e97b792c9c40d743",
"assets/fonts/Source_Sans_Pro/SourceSansPro-LightItalic.ttf": "54e87dedd7daccc391c61dc0795a97bd",
"assets/fonts/Source_Sans_Pro/SourceSansPro-Regular.ttf": "c1678b46f7dd3f50ceac94ed4e0ad01a",
"assets/fonts/JuliusSansOne-Regular.ttf": "3dcf0ae6a78a6a64ae1e3f2406cefa3b",
"assets/fonts/MajorMonoDisplay-Regular.ttf": "c04d1551740d27ebcf504e8c7e12ed75",
"assets/fonts/PoiretOne-Regular.ttf": "c57e537a1c25ff6c5beb211ef1c86634",
"assets/FontManifest.json": "7bdeea6d5c07ec4d4d835df2e573ed0a",
"main.dart.js": "d7859914929f1c3f3c7ae821eb8c896d",
"index.html": "1ab228a55ddeb4dbc462a5f829815b31"
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
