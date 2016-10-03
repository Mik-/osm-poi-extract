[out:csv(::lon,::lat,name;false;",")][timeout:600];

area[name="Deutschland"]->.germany;

(
  relation["amenity"="fast_food"]["name"~"McDonald's"](area.germany);
  way["amenity"="fast_food"]["name"~"McDonald's"](area.germany);
  node["amenity"="fast_food"]["name"~"McDonald's"](area.germany);
);

// print results
out center;
