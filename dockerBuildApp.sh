#!
# npm install
npm test
docker stop jackson-nodeapp-container || true && docker rm jackson-nodeapp-container || true
docker build -t jackson-nodeapp-image:${BUILD_NUMBER} .
docker tag jackson-nodeapp-image:${BUILD_NUMBER}  gcr.io/lbg-training/jackson-nodeapp-image:${BUILD_NUMBER}
docker push gcr.io/lbg-training/jackson-nodeapp-image:${BUILD_NUMBER}
docker run -d -p 5000:9000 --name jackson-nodeapp-container jackson-nodeapp-image:${BUILD_NUMBER}
