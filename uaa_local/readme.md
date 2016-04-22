GUIDE TO SETUP A NEW UAA CONTAINER

1. Go to Kitematic and open the Docker CLI to build the new container.


2. Clone the repository with the Dockerfile to setup the new container.

git clone https://github.com/carlosporter/containers.git


3. Go to the directory uaa_local within the container repository

cd uaa_local

4. From the CLI and within the directory uaa_local run the following command to create a container image:

docker build -t uaa_local .


5. If step 4 is completed successfully, make sure to remove the old container before proceding to the next step
   ( you can do from the Kitematic user interface ) or run the following command
   
docker rm uaa_local


6. Create a new container from the image recently built ( the initial run may take 5 to 10 minutes ).

cd .. 

docker run --name uaa_local -p 8080:8080 -it uaa_local

