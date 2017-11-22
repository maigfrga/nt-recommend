#!/bin/bash

mkdir -p ~/src/nt-recommend/data/results/
cd ~/src/nt-recommend/src

python3 manage.py resnik_collaborative_filter  --m msd --ns 100 >> ~/src/nt-recommend/data/results/results.txt
sleep 10

python3 manage.py resnik_collaborative_filter  --m pearson --ns 100 >> ~/src/nt-recommend/data/results/results.txt
sleep 10

python3 manage.py resnik_collaborative_filter  --m pearson --ns 100 --kn 10 >> ~/src/nt-recommend/data/results/results.txt
sleep 10
