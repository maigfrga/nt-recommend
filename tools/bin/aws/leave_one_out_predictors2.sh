#!/bin/bash
mkdir -p ~/src/nt-recommend/data/results/
cd ~/src/nt-recommend/src

# leave one out for predictors

python3 manage.py resnik_collaborative_filter --m msd --ns 100
sleep 10

python3 manage.py resnik_collaborative_filter --m pearson --ns 100
sleep 10
