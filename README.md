# Assignment-1-Cloud-Computing-Usama-Shehroz-
Assignment 1 of cloud computing by Usama Shehroz

Good day to you!

First of all the account that university give me doesnot work. So I create my own account of amazon aws and use it.

Step 1:
VS code Installed (extension: Terraform by harshicorp, Terraform autocomplete)
![image](https://user-images.githubusercontent.com/52674289/171297290-2dfde034-9530-4f5a-813a-a62aab9d9326.png)
Terraform Installed
AWS CLI (Done)
AWS is well configured and everthing is working smoothly


Step 2
Declare the Variable in terraform file DONE. Variable name is ec2typechanger
I try to change the type of EC2 instance via variable and its succesfully DONE!
Command is terraform apply -var"instance_typ=t3.micro"
![image](https://user-images.githubusercontent.com/52674289/171297564-7e6fbf2f-1e10-41a7-9ff9-f4b948edd0d8.png)


Step 3
As per your hint I create the dynamic value for the name attribute of the ec2 instance via using mutiple .tfvars technique
command is 

terraform apply -var-file="production.tfvars"


Step 4
I execute all of these commands and everything is correct
![image](https://user-images.githubusercontent.com/52674289/171304474-b4528b51-b531-4b54-a29c-929ac63287cc.png)


Step 5

here is the terraform local state
![image](https://user-images.githubusercontent.com/52674289/171304625-292338f9-9840-4964-93b0-bc10b5766553.png)


I use this code to create a remote state file in s3 Bucket

terraform {
  backend "s3" {
    bucket = "usamabucket"
    key    = "key/terraform.tfstate"
    region = "us-east-1"
  }
}




Step 6

After terraform init and terraform apply 
Remote state file is created succesfully in s3 Bucket
![image](https://user-images.githubusercontent.com/52674289/171304843-1ccfd545-af33-49aa-b58b-65deff0b05fb.png)



Thank you Terraform is very interesting infrastructure language I also started learning online


