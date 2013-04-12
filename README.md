Grrl! Graph+Curl
================

Grrl is a bash client for Neo4j. 

Why not just use Neo4j's shell? Because grrl doesn't care what version of Neo4j you are using (or even that it is talking to Neo4j).
Grrl just wants to integrate well on the command line. 

## Features

- one-shot queries `grrl "MATCH (n)--(m) WHERE n.name=\"grrl\""`
- REPL with history
- run `*.cypher` files as scripts
  - `grrl all.cypher` will find and run that script file
- multi-line Cypher statement support within scripts 
- multi-statement Cypher queries from files (semicolon separated)
- search for "Cypher scripts" by name (without extension)
  - `grrl all` could find `src/main/cypher/all.cypher` and run it
- pass key-value definitions in to parameterize Cypher
  - `grrl -Duid=abk find_user_by_uid`

## Basic Usage

```bash
grrl [ -dvh ] [ 'cypher query' | file ... ]

  GRaph cuRL sends Cypher queries to Neo4j.
  1) Without args, a repl starts.
  2) Provided args are interpreted as either
     complete Cypher queries, or script files 
     (with explicit or assumed ".cypher" extension).
  3) Piped input is treated like a script file.

  Options:
  -d Pass in a name=value pair to parameterize Cypher
  -v Verbose posting of scripts (helpful for debugging)
  -h Usage, grrl!
```

- `grrl clear` to delete everything but the hallowed node 0
- `grrl all` to get all nodes, relationships and typelabels
- `grrl <filename>` to post a cypher script
- `grrl "<cypher query>"` to post an ad-hoc query
