### See the service
Visit via browser: `3.143.241.151`

### Compute
I chose the host the compute on ECS service to keep things simple and affordable.Other options I was considering were kubernetes and apprunner. Kubernetes felt a bit overkill and cost prohibitive. I tested apprunner, but found the networking configurations highly restrictive when you wanted to host on a VPC vs public internet.

### Web Server
I chose to use nginx since it's docker image is preconfigured to serve HTML on port 80 via HTTP. If we needed any sort of backend functionality flask would be a great option.

### Image build
A simple makefile + docker to handle image build/auth/push + a local dev container with mounted code for rapid development. Each time the image is build you can visit the ECS UI to roll the task.