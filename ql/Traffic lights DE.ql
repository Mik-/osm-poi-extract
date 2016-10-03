[out:csv(::lon,::lat,name;false;",")][timeout:600];

area[name="Deutschland"]->.germany;

// query part for: “type=enforcement”
(
  relation["type"="enforcement"]["enforcement"="traffic_signals"](area.germany);
)->.rels;
(
	node(r.rels:"device");
);
// print results
out;
