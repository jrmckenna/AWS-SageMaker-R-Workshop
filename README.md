
# Amazon SageMaker + R Workshop
<p align="center">
<img src="./images/r-title.png">
</p>

---


**Disclaimer:**

- The content provided in this repository is for demonstration purposes and not meant for production. You should use your own discretion when using the content.
- The ideas and opinions outlined in these examples are my own and do not represent the opinions of AWS.

This GitHub repository provides examples of coding in R in SageMaker environment. These examples include the following:

1. [Running RStudio on EC2 Instance](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/tree/master/RStudio-EC2)
  This example explains how to run a CloudFormation stack to provision an EC2 Instance with all necessary resources to run RStudio.

2. [Using R Kernel in SageMaker Notebook Instance](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/tree/master/R-Kernel)
  This sample Notebook describes how to train, deploy, and retrieve predictions from a machine learning (ML) model using Amazon SageMaker and R. The model predicts abalone age as measured by the number of rings in the shell. The reticulate package will be used as an R interface to Amazon SageMaker Python SDK to make API calls to Amazon SageMaker. The reticulate package translates between R and Python objects, and Amazon SageMaker provides a serverless data science environment to train and deploy ML models at scale.

3. [Bring Your Own R Algorithm to SageMaker](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/tree/master/R_BYO_Algo)
  This notebook will focus mainly on the integration of hyperparameter tuning and a custom algorithm container, as well as hosting the tuned model and making inference using the endpoint.

4. [Hyperparameter Optimization for XGBoost in R and Batch Transform](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/tree/master/R_XGBoost_HPO_Batch_Transform)
  This sample Notebook describes how to conduct Hyperparamter tuning and batch transform to make predictions for abalone age as measured by the number of rings in the shell. The notebook will use the public abalone dataset hosted by UCI Machine Learning Repository.

5. [Using Spark EMR Clusters in SageMaker with R Kernel](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/tree/master/SageMaker-SparkR) The purpose of this example is to demonstrate how SageMaker notebook with R kernel can be connected to an EMR cluster using SparklyR package to process Spark job including data processing, SQL queries, Machine Learning, and data read/write in different formats. The example uses `iris`, `abalone`, and `mtcars` public datasets.

These examples utilize two libraries that provide R interfaces for AWS SageMaker and AWS services:

- [`Reticulate` library](https://rstudio.github.io/reticulate/): that provides an R interface to make API calls Amazon SageMaker Python SDK to make API calls to Amazon SageMaker. The reticulate package translates between R and Python objects, and Amazon SageMaker provides a serverless data science environment to train and deploy ML models at scale.
- [`paws` library](https://cran.r-project.org/web/packages/paws/index.html): that provides an interface to make API calls to AWS services, similar to how boto3 works. boto3 is the Amazon Web Services (AWS) SDK for Python. It enables Python developers to create, configure, and manage AWS services, such as EC2 and S3. Boto provides an easy to use, object-oriented API, as well as low-level access to AWS services. paws provides the same capabilities in R.

## More Useful Resources:
**NOTE:** The author of this Github repository does not endorse/approve the content provided in these resources. These linkes are provided here for educational purpose, and the reader is encouraged to review and check the contents.
- RPubs - Using Amazon SageMaker To Predict Fraud

  - www.rpubs.com
  - https://www.rpubs.com/TimFlocke/SageMaker_R_demo

- AWS Sagemaker and R | Tim Mastny
  - timmastny.rbind.io
  - https://timmastny.rbind.io/blog/aws-sagemaker-r/

- R Interface for the AWS Sagemaker API • sagemaker
  - tmastny.github.io
  - The sagemaker R package creates an interface for AWS Sagemaker. The R pacakge simplifies the creation and analysis of machine learning models build and deployed by Sagemaker.
  - https://tmastny.github.io/sagemaker/
