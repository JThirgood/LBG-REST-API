#!

# Install NPM -- have commented out so it doesn't run every time.. add logic to check if already installed and remove if not
# npm install

#Runs test scripts
npm test

#Stop and remove old containers
docker stop jackson-nodeapp-container || true && docker rm jackson-nodeapp-container || true

#Build the image using the BUILD_NUMBER variable
docker build -t jackson-nodeapp-image:${BUILD_NUMBER} .

#Tag the image with the gcr.io/PROJECT/NAME
docker tag jackson-nodeapp-image:${BUILD_NUMBER}  gcr.io/lbg-training/jackson-nodeapp-image:${BUILD_NUMBER}

#Push the image to the GCR
docker push gcr.io/lbg-training/jackson-nodeapp-image:${BUILD_NUMBER}

#Run the container to launch the app
#docker run -d -p 5000:9000 --name jackson-nodeapp-container jackson-nodeapp-image:${BUILD_NUMBER}

#Clean up old images
#docker system prune -af
