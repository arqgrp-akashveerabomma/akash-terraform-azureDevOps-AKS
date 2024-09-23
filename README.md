This Project will show step by step guideline to create AKS using Terraform and AzuredevOps. Then it will create another CI/CD pipeline to push docker and apply K8s mainfests

![alt text](image-20.png)

Pre-requisites:
1. Azure Subscription
2. Azure DevOps Organsation
3. Github account
4. Vscode

**********************************************************************


For Backend:

Create storage account, container and key

************************************************************************

Create Azure DevOps organisation:
login to azuredevops
![alt text](image-1.png)

Go to organanization settings
From Extenstion- go to marketplace and download terraform task installer as per below
![alt text](image-2.png)

Now Create a Project:
![alt text](image-21.png)


Go to your projects settings-service connection
Create Service Connection
![alt text](image-3.png)

![alt text](image-4.png)

![alt text](image-5.png)

![alt text](image-6.png)

If you have followed the steps above you will see like below
![alt text](image-7.png)

Now, from your service connection click on manage app registration. It wil take you to the following page

![alt text](image-22.png)

get the client id and assign the roll as per below:
az role assignment create --assignee client id --role "User Access Administrator" --scope /subscriptions/subscription id

Create another service connection to integrate your github. 
![alt text](image-23.png)

In the project go to Library and set your common variables:
Create a variable group and set below variables:
backendAzureRmContainerName
aks
backendAzureRmKey
aks.tfstate
backendAzureRmResourceGroupName
azureaks
backendAzureRmStorageAccountName
aks1245
backendServiceArm (your service connection name)
azuresvc
backendType
azurerm
environmentServiceName
azuresvc (your service connection name)

Please see the screenshot below

![alt text](image-8.png)

CREATE YOUR FIRST PIPELINE:
![alt text](image-24.png)
You will be asked to show your code
![alt text](image-10.png)

Select existing azure pipeline here:
![alt text](image-11.png)

Show your pipleline as below:
![alt text](image-12.png)

Save and run. 

Before this piplline run:
go to your vs code: update your tfvars file, set your acr name something unique and push your code to github

Then configure the previous pipeline step and save and run

This should Create the cluster.


******************************************************************
CI/CD with Docker and kuberenetes manifest

Step 1. Create a docker service connection
![alt text](image-13.png)
![alt text](image-14.png)

Grant access to all pipelines and save

Step 2.
Update docker-K8s-pipelines.yml-provide your service connection name
![alt text](image-15.png)

Step 3. 
Push the code

Step 4. Create a new pipeline (Follow previous steps on how to create use docker-k8s-pipelines.yml)
![alt text](image-16.png)

I saved it as application pipeline
and run is successful
![alt text](image-17.png)
You can see your image is published to container repository