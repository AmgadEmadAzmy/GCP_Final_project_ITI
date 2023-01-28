# GCP_Final_project_ITI
------------------------------------------------------------------------------
#BY terraform code .
-terraform init
-terraform plan
-terraform apply
------------------------------------------------------------------------------
#Build docker image using Docker file, and upload it to GCR
-docker build -t image-name .
-docker tag image-name gcr.io/my-project/image-name
-docker push gcr.io/my-project/image-name
-------------------------------------------------------------------------------
#Pull redis image from Docker hub,next push ot to GCR
-docker pull redis
-docker push gcr.io/ace-tracker-375011/redis
-------------------------------------------------------------------------------
# to SSH the private VM: run this commands on vm
sudo apt update -y
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
sudo apt install google-cloud-cli -y

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
sudo chmod +x kubectl
sudo mkdir -p ~/.local/bin
sudo mv ./kubectl ~/.local/bin/kubectl

sudo apt install google-cloud-sdk-gke-gcloud-auth-plugin
echo "donedone" > done.txt
--------------------------------------------------------------------------------
#SSH to GKE :  use this command to all file (.yaml)
-copy all file that (.yaml)
+
-kubectl apply -f filename.yaml
--------------------------------------------------------------------------------
#get the load balancer IP
--------------------------------------------------------------------------------
