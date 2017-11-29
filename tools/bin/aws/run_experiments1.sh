#!/bin/bash
mkdir -p ~/src/nt-recommend/data/results/
cd ~/src/nt-recommend/src

# leave one out

#python3 manage.py mean_predictor 
#sleep 10
#
#
#python3 manage.py collaborative_filter --m msd --ns 100
#sleep 10
#
#python3 manage.py collaborative_filter --m pearson --ns 100
#sleep 10
#
#python3 manage.py resnik_collaborative_filter --m msd --ns 100
#sleep 10
#
#python3 manage.py resnik_collaborative_filter --m pearson --ns 100
#sleep 10
python3 manage.py mean_predictor --kn 10
sleep 10

python3 manage.py mean_predictor --kn 1000
sleep 10

python3 manage.py mean_predictor --kn 10000
sleep 10
