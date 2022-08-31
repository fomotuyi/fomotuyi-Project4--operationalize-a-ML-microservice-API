[![CircleCI](https://dl.circleci.com/status-badge/img/gh/fomotuyi/fomotuyi-Project4--operationalize-a-ML-microservice-API/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/fomotuyi/fomotuyi-Project4--operationalize-a-ML-microservice-API/tree/main)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. 

### Project Tasks

My project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I was able to but not limited to:
* Test my project code using linting with an empty docker file and confirm if the code is rated 10.00/10
* Complete a Dockerfile to containerize this application 
* Deploy your containerized application using Docker with command [bash run_docker.sh] and make a prediction with command [bash make_prediction.sh]
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    * Docker has been installed automatically when we created cloud 9 environment
    * Run ./run_docker.sh
    * Run docker ps to confirm that docker is running
    * Run ./make_prediction.sh to make prediction
    * Confirm the result
    * Added log in the app.py and run ./make_prediction.sh
    * copy/paste the logging info at terminal to output_txt_files/docker_out.txt
    * Run docker login
    * Make my repository public

* Setup and Configure Kubernetes locally
    * Run curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    * Run sudo install minikube-linux-amd64 /usr/local/bin/minikube
    * run curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" to download the latest release of Kubernetes
    * run curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256" to download the kuberenetes checksum
    * Run sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl to install kubernetes
    * Run minikube start to start minikube
    * Run kubectl get pods to see which pods are running.
    * If it's not running, please ensure that your repository is public
    * change the repoistory to be public
    * Kill and restart the minikube
    * Run bash run_kubernetes.sh
    * Run ./make_prediction.sh to make prediction and copy/paste the logging info at terminal to output_txt_files/kubernetes_out.txt




* Create Flask app in Container
    * Run ./run_docker.sh to build and start the Flask app container.
    * Run ./upload_docker.sh to upload the container to docker hub.

