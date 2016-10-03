[out:csv(::lon,::lat,name,cuisine;false;",")][timeout:600];

area[name="Nordrhein-Westfalen"]->.nrw;

(
  relation["amenity"="fast_food"]["name"!~"(McDonald's|Burger King)"]["cuisine"~"(turkish|kebab)"](area.nrw);
  way["amenity"="fast_food"]["name"!~"(McDonald's|Burger King)"]["cuisine"~"(turkish|kebab)"](area.nrw);
  node["amenity"="fast_food"]["name"!~"(McDonald's|Burger King)"]["cuisine"~"(turkish|kebab)"](area.nrw);
);

// print results
out center;
