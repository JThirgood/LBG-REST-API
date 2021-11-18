#!
# npm install
npm test
#docker stop jackson-nodeapp-container || true && docker rm docker-nodeapp-container || true
docker build -t gcr.io/lbg-training/jackson-nodeapp-image .
#docker run -d -p 5000:9000 --name jackson-nodeapp-container jackson-nodeapp-image
