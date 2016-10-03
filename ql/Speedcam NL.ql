[out:csv(::lon,::lat,maxspeed;false;",")][timeout:600];

area[name="Nederland"]->.netherland;

// query part for: “type=enforcement”
(
  relation["type"="enforcement"]["enforcement"="maxspeed"](area.netherland);
)->.rels;
(
	node(r.rels:"device");
    node["type"="enforcement"]["enforcement"="maxspeed"](area.netherland);
  	node["highway"="speed_camera"](area.netherland);
);
// print results
out;
