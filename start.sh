#!/bin/bash


if [ ! -f data/mnist-train.npz ]; then
  echo "Getting MNIST dataset...."
  [ ! -d data ] && mkdir data
  wget https://s3.eu-west-2.amazonaws.com/emotech-public/ml_test/mnist-test.npz -O data/mnist-test.npz
  wget https://s3.eu-west-2.amazonaws.com/emotech-public/ml_test/mnist-valid.npz -O data/mnist-valid.npz
  wget https://s3.eu-west-2.amazonaws.com/emotech-public/ml_test/mnist-train.npz -O data/mnist-train.npz
fi

export MLP_DATA_DIR=`pwd`/data

jupyter notebook
