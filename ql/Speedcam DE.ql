[out:csv(::lon,::lat,maxspeed;false;",")][timeout:600];

area[name="Deutschland"]->.germany;

// query part for: “type=enforcement”
(
  relation["type"="enforcement"]["enforcement"="maxspeed"](area.germany);
)->.rels;
(
	node(r.rels:"device");
    node["type"="enforcement"]["enforcement"="maxspeed"](area.germany);
  	node["highway"="speed_camera"](area.germany);
);
// print results
out;
