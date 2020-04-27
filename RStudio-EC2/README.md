# Running RStudio on EC2 Instance

<p align="center">
<img src="https://d1.awsstatic.com/icons/Page-Illo_EC2%20Overviews%20and%20Features_Choice%20of%20Processors.978fd9a10d0d895ed004b3bfc00fc8aad9a0812b.png" width="200" height="100"/> &nbsp;
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/Plus_font_awesome.svg/512px-Plus_font_awesome.svg.png" width="50" height="50"/>&nbsp;&nbsp;
<img src="https://rstudio.com/wp-content/uploads/2018/10/RStudio-Logo.png" width="300" height="100"/>
</p>


---

To run RStudio on EC2 Instance, follow these steps:

1) Go to this [blog post](https://aws.amazon.com/blogs/machine-learning/using-r-with-amazon-sagemaker/), and then follow **Option 1: Launching AWS CloudFormation**

- You will need a set of key-pair for creating the CloudFormation stack and also logging into the EC2 instance once created. Follow the instructions provided in [Amazon EC2 key pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html) to create the Key-Pair.

  **Note:** You will need to save the key-pair locally on your machine in a secure location.

- Use the following AWS CloudFormation stack to install, configure, and connect to RStudio on an Amazon Elastic Compute Cloud (Amazon EC2) instance with Amazon SageMaker. Running this step might take about 10 mins to complete:

  - [CloudFormation Stack](https://console.aws.amazon.com/cloudformation/home?region=us-west-2#/stacks/new?stackName=rstudio-sagemaker&templateURL=https://s3.amazonaws.com/aws-ml-blog/artifacts/build-sagemaker-models-with-r/rstudio_sagemaker.yaml)


- Launching this stack creates the following resources:

  - A public virtual private cloud (VPC)
  - An Amazon EC2 instance (t2.medium)
  - A security group allowing SSH access only
  - An AWS Identity and Access Management (IAM) role for Amazon EC2 with Amazon SageMaker permissions
  - An IAM service role for Amazon SageMaker
  - An installation of RStudio
  - The required R packages
  - An installation of the Amazon SageMaker Python SDK


- Once you launch the stack, follow these steps:

  - On the Select Template page, choose Next.
  - On the Specify Details page, choose the key-pair that you created in Step 1.1 for KeyName.
  - On the Options page, choose Next.
  - On the Review page, select the I acknowledge that AWS CloudFormation might create IAM resources with custom names check box and choose Next.
  - Once the stack has reached **CREATE_COMPLETE** status, choose the Outputs
  - Copy and paste the SSH string in Value into a terminal window.

2) Go to the terminal, navigate to the folder in which you saved the key-pair

- type `chmod 400 [name of key-pair file]`

- Paste and run the SSH link from Step 1.3

- Once logged into the EC2 instance and while it is running, open a browser, and type: `http://localhost:8787/`

  **Note:** You might see connect failed messages in your terminal while RStudio and the required R packages are installing. The installation process takes approximately 15 minutes.

  Sign in with the following credentials:

        Username: rstudio
        Password: rstudio

<img src="https://d2908q01vomqb2.cloudfront.net/f1f836cb4ea6efb2a0b1b99f41ad8b103eff4b59/2018/05/18/sagemaker-r-1.gif" width="500" height="300" />

(Image from [this blog post](https://aws.amazon.com/blogs/machine-learning/using-r-with-amazon-sagemaker/))

3) Once in RStudio, run this line in the RStudio console to install `r-reticulate` environment and `sagemaker-python-sdk` package:

`conda_install(envname = "r-reticulate", packages="sagemaker-python-sdk")`

4) Copy and paste the code from [`r-sample.R`](https://github.com/nickminaie/AWS-SageMaker-R-Workshop/blob/master/RStudio-EC2/r_sample.R) into RStudio, and run the code.
