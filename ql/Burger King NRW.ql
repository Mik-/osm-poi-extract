[out:csv(::lon,::lat,name;false;",")][timeout:600];

area[name="Deutschland"]->.germany;

(
  relation["amenity"="fast_food"]["name"~"Burger King"](area.germany);
  way["amenity"="fast_food"]["name"~"Burger King"](area.germany);
  node["amenity"="fast_food"]["name"~"Burger King"](area.germany);
);

// print results
out center;
