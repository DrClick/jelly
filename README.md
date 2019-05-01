# toast
## so you think you can make toast

An application for showing optimization of non-linear manifold by humans and RL.

![Alt text](toast.JPG?raw=true "Toast")

### Development
Build container that stops at stage 1 (for development)
`docker build --target node -t toaster-dev .`

Start the development docker and start hosting the site
```
docker run --rm -it --name toaster-dev -p 4200:4200 -v $(pwd)/app:/app toaster-dev bash
cd toast
ng serve --host 0.0.0.0
```
At this stage you shold be able to open your browser to http://localhost:4200

to run npm commands, exec into the docker
`docker exec -it toaster-dev bash`
