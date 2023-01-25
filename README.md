# GCP_Final_project_ITI
=====================================================================================================================
#BY terraform code 
-terraform init
-terraform plan
-terraform apply
=====================================================================================================================
#Build docker image using Docker file, and upload it to GCR
-docker build -t image-name .
-docker tag image-name gcr.io/my-project/image-name
-docker push gcr.io/my-project/image-name
=====================================================================================================================
#Pull redis image from Docker hub,next push ot to GCR
-docker pull redis
-docker push gcr.io/ace-tracker-375011/redis
=====================================================================================================================
