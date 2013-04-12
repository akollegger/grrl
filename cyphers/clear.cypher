START n=node(*) MATCH (n)-[r?]-() WHERE ID(n) > 0 DELETE n,r;
