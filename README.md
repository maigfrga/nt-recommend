# nt-recommend: Experimentation Framework for Learning Recommender Systems

This project is a basic recommender system experimentation framework built in python3.
It covers collaborative filtering initially, but it can be extended to support other
recommendation techniques. **It is not compatible with python2.**

## Disclaimer

This framework is only for educational proposes, we use basic native python data structures,
we have implmented all the algorithms by ourselves with the only aim of learning, therefore,
this project is not suitable for production environments.

## Installation

We recommend to install this framework insised a python virtual environment. If you don't
have [virtualenv](https://pypi.python.org/pypi/virtualenv) in your machine, you can install
it with the following command:


```
pip install virtualenv
```

Now you are ready to create a virtualenv, **it is very important to make sure that is a python3
and not python2 virtualenv**:

```
mkvirtualenv nt-recommend -p /usr/bin/python3
workon nt-recommend
```


After creating the virtualenv, you can install the required libraries with the following command:

```
pip install -r tools/requirements/dev.txt
```


After installing all the packges you will need to execute the following command to dowload some
libraries for Natural Language Processing:

```
 python -m nltk.downloader all
```

## MovieLens Dataset

The [MovieLens Dataset](https://grouplens.org/datasets/movielens/) is a collection of rating
datasets suitable for research and education. It contains about 20 million ratings and 465,000
tag applications applied to 27,000 movies by 138,000 users.

We use the [reduced version](http://files.grouplens.org/datasets/movielens/ml-latest-small-README.html)
of this dataset that contains 100,000 ratings and 1,300 tag applications applied to 9,000 movies by
700 users.

### Initial Data analysis

The following command generates basic stats about the dataset:

```
python3 manage.py initial_diagnose
```

#### General Statistics

+-------------+--------------+------------+----------------+
| Total Users | Total Movies | Total Tags | Matrix Density |
+-------------+--------------+------------+----------------+
| 671         | 9125         |    1296    | 0.0163         |
+-------------+--------------+------------+----------------+



### Statistics by User and Ratings

+--------------------------------+--------------------------------+-------------------------+-----------------------+-------------------------------------+
| Max Number of Ratings for User | Min Number of Ratings for User | Median Ratings for User | Mean Ratings for User | Standard Deviation Ratings for User |
+--------------------------------+--------------------------------+-------------------------+-----------------------+-------------------------------------+
|              2391              |               20               |            71           |          149          |                 231                 |
+--------------------------------+--------------------------------+-------------------------+-----------------------+-------------------------------------+



### Statistics by Movie and Ratings:

+---------------------------------+---------------------------------+--------------------------+------------------------+--------------------------------------+
| Max Number of Ratings for Movie | Min Number of Ratings for Movie | Median Ratings for Movie | Mean Ratings for Movie | Standard Deviation Ratings for Movie |
+---------------------------------+---------------------------------+--------------------------+------------------------+--------------------------------------+
|               341               |                0                |            3             |           11           |                  24                  |
+---------------------------------+---------------------------------+--------------------------+------------------------+--------------------------------------+



### Total number of ratings for each of the ratings

+------+------+------+------+------+-------+-------+-------+------+-------+
| 0.5  | 1.0  | 1.5  | 2.0  | 2.5  |  3.0  |  3.5  |  4.0  | 4.5  |  5.0  |
+------+------+------+------+------+-------+-------+-------+------+-------+
| 1101 | 3326 | 1687 | 7271 | 4449 | 20064 | 10538 | 28750 | 7723 | 15095 |
+------+------+------+------+------+-------+-------+-------+------+-------+


### Statistics by Tags and User

+----------------------------+----------------------------+-------------------------------+-----------------------------+---------------------------------+
| Max Number of Tags by User | Min Number of Tags by User | Median Number of Tags by User | Mean Number of Tags by User | Standard Deviation Tags by User |
+----------------------------+----------------------------+-------------------------------+-----------------------------+---------------------------------+
|            401             |             0              |               0               |             1.93            |               18.6              |
+----------------------------+----------------------------+-------------------------------+-----------------------------+---------------------------------+



### Statistics by Tags and Movie

+-----------------------------+-----------------------------+--------------------------------+------------------------------+----------------------------------+
| Max Number of Tags by Movie | Min Number of Tags by Movie | Median Number of Tags by Movie | Mean Number of Tags by Movie | Standard Deviation Tags by Movie |
+-----------------------------+-----------------------------+--------------------------------+------------------------------+----------------------------------+
|              25             |              0              |               0                |            0.142             |              0.763               |
+-----------------------------+-----------------------------+--------------------------------+------------------------------+----------------------------------+





## Executing unit test:


```
cd src
workon nt-recommend
python manage.py test
```



## Resources

* [MovieLens Dataset](https://grouplens.org/datasets/movielens/)

* [Why every statistician should know about cross-validation](https://robjhyndman.com/hyndsight/crossvalidation/)