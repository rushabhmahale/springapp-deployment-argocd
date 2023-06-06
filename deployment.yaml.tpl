---
## Deployment ###

apiVersion: apps/v1
kind: Deployment
metadata:
  name: springapp
  namespace: default
  labels:
    app: springapp
spec:
  replicas: 1
  selector:
    matchLabels:
      app: springapp
  template:
    metadata:
      labels:
        app: springapp
    spec:
      containers:
      - name: springapp
        image: asia-south1-docker.pkg.dev/avian-direction-382907/my-repo/springapp:COMMIT_SHA
        ports:
        - containerPort: 8080
