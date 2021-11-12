#!
npm install
npm test
docker stop my-node-container-scripted || true && docker rm my-node-container-scripted || true
docker build -t my-node-image-scripted .
docker run -d -p 5000:9000 --name my-node-container-scripted my-node-image-scripted
