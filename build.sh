docker build -t nexus.teamdigitale.test/virtuoso:1.0.0 ./virtuoso
docker push nexus.teamdigitale.test/virtuoso:1.0.0

docker build -t nexus.teamdigitale.test/lode:1.0.0 ./lode
docker push nexus.teamdigitale.test/lode:1.0.0

docker build -t nexus.teamdigitale.test/lodview:1.0.0 ./lodview
docker push nexus.teamdigitale.test/lodview:1.0.0
