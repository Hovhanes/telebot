Telebot
=========================

Telebot is a Telegram bot designed for message management in public chats.


Solution
--------

The project was written with python and run with Docker and kubernetes. Botfather bot have used to create telegram bot.

Issues during the development.
------

1. Telegram bot api not give functionality to get messages from user's public chats, at least from the chats where bot not joined.
2. Telegram bot can not be ran in the many servers, as unique token should be used in one instance simultaneously.
3. image built by apple m1 can not be used in linux servers

solution or to do for previous section.
------
1. (To Do) Telegram API should be investigated more carefully, also it is can be possible if bot automatically will be joined to the public chat.
2. (To Do) We can not run more than 1 instance for telegram bot, but for have high availability we can implement fail over system, and call/run second instance in case of fails.
3. (Done) To fix the issue with docker image I have used docker buildx feature and have build linux image in the Mac, then I have pushed both images to the dockerhub, yo can find them with the following link

https://hub.docker.com/repository/docker/hovo4686/telebot/general

Used tools 
--------

### kubectl
The project have checked with EKS

Client Version: v1.28.1

Kustomize Version: v5.0.4-0.20230601165947-6ce0bf390ce3

Server Version: v1.25.12-eks-2d98532

### docker
Docker Desktop 4.23.0

### python
python:3.9

### Run
to run this project you can run following command, in case if you have not 

`cd scripts && ./run.sh`

### To Do
* Use gitflow (or other flow base on the requirements)
* Use Github actions for the CI/CD
* Use aws secrets manager instead of k8s secrets (for example)
* Run high available k8s deployment
* Use 2 images if possible, first for the find public messages and second for the remove (for better scalability)
* setup linter and write Unit tests for the python code
