#!/bin/bash

aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 010526280170.dkr.ecr.us-east-1.amazonaws.com
cd fastapi
docker tag cd-test:latest 010526280170.dkr.ecr.us-east-1.amazonaws.com/cd-test:latest
docker push 010526280170.dkr.ecr.us-east-1.amazonaws.com/cd-test:latest