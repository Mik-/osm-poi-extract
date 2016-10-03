[out:csv(::lon,::lat,name;false;",")][timeout:600];

area[name="Nederland"]->.netherland;

// query part for: “type=enforcement”
(
  relation["type"="enforcement"]["enforcement"="traffic_signals"](area.netherland);
)->.rels;
(
	node(r.rels:"device");
);
// print results
out;
