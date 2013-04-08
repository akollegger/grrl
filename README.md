Grrl! Graph+Curl
================

Grrl is a bash client for Neo4j. 

## Features

- one-shot queries `grrl "MATCH (n)--(m) WHERE n.name=\"grrl\""`
- REPL with history
- run `*.cypher` files as scripts
  - `grrl all.cypher` will find and run that script file
- multi-line Cypher statement support within scripts 
- multi-statement Cypher queries from files (semicolon separated)
- search for "Cypher scripts" by name (without extension)
  - `grrl all` will find `src/main/cypher/all.cypher` and run it

