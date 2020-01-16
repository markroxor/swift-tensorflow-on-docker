# swift-tensorflow-on-docker
Dockerfile for minimal running swift+tensorflow on ubuntu 18.04 on docker.

## Setup docker
For ubuntu 19.10 instructions are -
``` bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable"
sudo apt install docker-ce
```

## Build and run
Inside the project dir -
``` bash
sudo docker build -t swifty .           
sudo docker run --privileged -i -t swifty
```

## Usage
``` swift
root@bc955c2073ad:~# swift
Welcome to Swift version 5.1.1-dev (Swift 7b97b0ced0).
Type :help for assistance.
  1> import TensorFlow 
  2. import Python 
  3.  
  4. let np = Python.import("numpy") 
  5.  
  6. let array = np.arange(100).reshape(10, 10)  // Create a 10x10 numpy array. 
  7. let tensor = Tensor<Float>(numpy: array)  
np: PythonObject = <module 'numpy' from '/usr/local/lib/python3.6/dist-packages/numpy/__init__.py'>
array: PythonObject = 
[[ 0  1  2  3  4  5  6  7  8  9]
 [10 11 12 13 14 15 16 17 18 19]
 [20 21 22 23 24 25 26 27 28 29]
 [30 31 32 33 34 35 36 37 38 39]
 [40 41 42 43 44 45 46 47 48 49]
 [50 51 52 53 54 55 56 57 58 59]
 [60 61 62 63 64 65 66 67 68 69]
 [70 71 72 73 74 75 76 77 78 79]
 [80 81 82 83 84 85 86 87 88 89]
 [90 91 92 93 94 95 96 97 98 99]]
tensor: Tensor<Float>? = nil
  8>  
```
