'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "6f50c10de118f68f6037f1de5dc2e79b",
"assets/AssetManifest.bin.json": "9963be8e8d9b154e2c3cb15d5be23bfa",
"assets/AssetManifest.json": "ce4a0db8abc7938a5c774d2cc6a80523",
"assets/assets/11.jpg": "99264468832f3968cf564820a1e58226",
"assets/assets/bacon.jpg": "8b78bb700e48454c1d24a8074362270d",
"assets/assets/beans.jpg": "fb18c3c11483281366b7335340a8ff0d",
"assets/assets/cans.png": "a45d10b18f517056ed00fed420258306",
"assets/assets/chips.jpg": "6904d323913b7957b0dac7f2287f9241",
"assets/assets/chipsbeans.jpg": "df7af5d25692f886e621c74799932d36",
"assets/assets/coffee.jpg": "3c67e53d682589dcb8ce02dd3ac1e20c",
"assets/assets/egg.jpg": "c755b4dd86ed9b396affb49de4240019",
"assets/assets/energy.jpeg": "0297c9a0f4f0e0eda132b583d1f3a6a5",
"assets/assets/english.jpg": "cdc7edb01260b4595a0c4cbe05e78bc2",
"assets/assets/gravy.jpg": "c0881cc928de802acc99be2156346428",
"assets/assets/gutbuster.jpg": "bdb5876e19be1c375cef504532ff4cee",
"assets/assets/jackets.png": "7f4e5a9926e30a109e32ef736fbbdc2e",
"assets/assets/large.jpg": "e3fc013ef557a61b23b3e2403fb4e395",
"assets/assets/medium.jpg": "4069877d173d67a898cb39fd92dd8fc2",
"assets/assets/salad.jpg": "a0c478363444fc469d6140f1e9b89d0f",
"assets/assets/sandwiches.jpg": "10fec3744e023c6525c4d09cc8dbb301",
"assets/assets/saso.jpg": "f14b414a86a8949e3a6dabb008bb4535",
"assets/assets/sausage.jpg": "63e959f3d1788a2adff6d08ddf84c0d7",
"assets/assets/scrambled.jpg": "a76440cba06d76cfcd824dbc361f7be1",
"assets/assets/small.jpg": "2c953bf9b0a01f4f98a3a42905783f4f",
"assets/assets/tea.jpg": "0afd055a87eb915b83bdd73789183926",
"assets/assets/toasties.jpg": "8a4e94c708c802a3857db10e4e374fe5",
"assets/assets/water.jpg": "c2b227805f53c6488c3313c16d08bcca",
"assets/assets/wrap.jpg": "92a9886ca9a462dd10064226998d547c",
"assets/assets/wraps.jpg": "02b290a64338556c871b025d758adcfe",
"assets/FontManifest.json": "c75f7af11fb9919e042ad2ee704db319",
"assets/fonts/MaterialIcons-Regular.otf": "c05c3e3b95a83eee186f777abed74f99",
"assets/NOTICES": "f60b32204d82b8fc6233f94ea4b3bcd6",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Brands-Regular-400.otf": "d40c67ce9f52d4bf087e61453006393c",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Regular-400.otf": "b2703f18eee8303425a5342dba6958db",
"assets/packages/font_awesome_flutter/lib/fonts/Font-Awesome-7-Free-Solid-900.otf": "5b8d20acec3e57711717f61417c1be44",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "140ccb7d34d0a55065fbd422b843add6",
"canvaskit/canvaskit.js.symbols": "58832fbed59e00d2190aa295c4d70360",
"canvaskit/canvaskit.wasm": "07b9f5853202304d3b0749d9306573cc",
"canvaskit/chromium/canvaskit.js": "5e27aae346eee469027c80af0751d53d",
"canvaskit/chromium/canvaskit.js.symbols": "193deaca1a1424049326d4a91ad1d88d",
"canvaskit/chromium/canvaskit.wasm": "24c77e750a7fa6d474198905249ff506",
"canvaskit/skwasm.js": "1ef3ea3a0fec4569e5d531da25f34095",
"canvaskit/skwasm.js.symbols": "0088242d10d7e7d6d2649d1fe1bda7c1",
"canvaskit/skwasm.wasm": "264db41426307cfc7fa44b95a7772109",
"canvaskit/skwasm_heavy.js": "413f5b2b2d9345f37de148e2544f584f",
"canvaskit/skwasm_heavy.js.symbols": "3c01ec03b5de6d62c34e17014d1decd3",
"canvaskit/skwasm_heavy.wasm": "8034ad26ba2485dab2fd49bdd786837b",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "888483df48293866f9f41d3d9274a779",
"flutter_bootstrap.js": "ebb3e217737e177db1ee785cd25edd0c",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bf1d24ca523f3255fd922756966c7cc7",
"/": "bf1d24ca523f3255fd922756966c7cc7",
"main.dart.js": "77186cdd146bc9496e3ff42dce9b8b70",
"manifest.json": "cd7eeb2a031f4a9d8fde539858f4ab48",
"version.json": "6e6050f3d39d263f3c69cac1de1041f4"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
