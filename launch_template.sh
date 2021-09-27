#!/bin/bash

environment="$1"

aws cloudformation deploy --template-file ec2_instance.yml --stack-name ec2 --parameter-overrides env=$environment
