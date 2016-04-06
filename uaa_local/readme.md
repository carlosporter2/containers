GUIDE TO SETUP A NEW UAA CONTAINER
----------------------------------

1. Download the .zip file with the Dockerfile that will help you to build the new UAA container.

https://drive.google.com/file/d/0B3o6ceGkDeCoS3JBejE2eXVIaGc/view?usp=sharing


2. Copy and decompress the file in a path close to your home directory.


3. Go to Kitematic and open the Docker CLI to build the new container.


4. From the CLI and within the directory uaa_local2 run the following command to create a container image:

docker build -t uaa_local2 .


5. If step 4 is completed successfully, make sure to remove the old container before proceding to the next step
   ( you can do from the Kitematic user interface ).


6. Create a new container from the image recently built ( the initial run may take 5 to 10 minutes ).

docker run --name uaa_local2 -p 8080:8080 -it uaa_local2




docker build -t uaa_local .


docker run --name uaa_local -p 8080:8080 -it uaa_local
