#! /bin/sh
docker run \
--publish=7474:7474 \
--publish=7473:7473 \
--publish=7687:7687 \
--volume=$HOME/neo4j/conf:/conf \
--volume=$HOME/neo4j/data:/data \
--volume=$HOME/neo4j/plugins:/plugins \
--env NEO4J_AUTH=none \
neo4j

