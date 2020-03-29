aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 012235359719.dkr.ecr.us-east-1.amazonaws.com
docker build -t 012235359719.dkr.ecr.us-east-1.amazonaws.com/coming-soon:latest .
docker push 012235359719.dkr.ecr.us-east-1.amazonaws.com/coming-soon:latest
aws ecs update-service --cluster web-cluster --service coming-soon-service --force-new-deployment