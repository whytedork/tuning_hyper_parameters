## Problem : Tuning Hyper Parameters

# Blog-Link  https://teknoboost.wordpress.com/2020/05/25/tuning-hyper-parameters-using-mlops-machine-learning-on-devops/

### What is Hyper Parameters in ML ?

These are adjustable parameters that must be tuned in order to obtain a model with optimal performance.

### What is MLOps ?

MLOps is a recent term that describes how to apply DevOps principles to automating the building, testing, and deployment of ML systems.
“A software engineering approach in which a cross-functional team produces machine learning applications based on code, data, and models in small and safe increments that can be reproduced and reliably released at any time, in short adaptation cycles.”


### Problem Statement

Create container image that’s has Python3 and Keras or numpy installed using dockerfile
When we launch this image, it should automatically starts train the model in the container.
Create a job chain of job1, job2, job3, job4 and job5 using build pipeline plugin in Jenkins
Job1 : Pull the Github repo automatically when some developers push repo to Github.

Job2 : By looking at the code or program file, Jenkins should automatically start the respective machine learning software installed interpreter install image container to deploy code and start training( eg. If code uses CNN, then Jenkins should start the container that has already installed all the softwares required for the cnn processing).

Job3 : Train your model and predict accuracy or metrics.

Job4 : if metrics accuracy is less than 80% , then tweak the machine learning model architecture.

Job5: Retrain the model or notify that the best model is being created

Create One extra job job6 for monitor : If container where app is running. fails due to any reason then this job should automatically start the container again from where the last trained model left.
