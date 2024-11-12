versao=latest
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 879381273831.dkr.ecr.us-east-1.amazonaws.com
docker build -t bia .
docker tag bia:latest 879381273831.dkr.ecr.us-east-1.amazonaws.com/bia:$versao
docker push 879381273831.dkr.ecr.us-east-1.amazonaws.com/bia:$versao
