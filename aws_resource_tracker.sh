#!/bin/bash

#####################################
# Author : Viswas
# Date : 17 jan 2024
#
# Version 1
#
# This script will report the AWS resource Usage
######################################

set -x

# AWS S3
# Aws EC2
# AWS Lambda
# AWS IAM Users

# List s3 Buckets
echo "Print list of s3 Buckets"
aws s3 ls > resourceTracker


# List EC2 Instaces
echo "Print list of buckets "
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourc>

#List Lambda
echo "Print list of lambda functions :"
aws lambda list-functions >> resourceTracker


#list IAM Users
echo "Print list of IAM Users"
aws iam list-users  >> resourceTracker
