[out:csv(::lon,::lat,name,cuisine;false;",")][timeout:600];

area[name="Nordrhein-Westfalen"]->.nrw;

(
  relation["amenity"="ice_cream"](area.nrw);
  way["amenity"="ice_cream"](area.nrw);
  node["amenity"="ice_cream"](area.nrw);
  relation["amenity"="cafe"]["cuisine"="ice_cream"](area.nrw);
  way["amenity"="cafe"]["cuisine"="ice_cream"](area.nrw);
  node["amenity"="cafe"]["cuisine"="ice_cream"](area.nrw);
);

// print results
out center;
