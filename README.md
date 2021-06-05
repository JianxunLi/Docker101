https://docs.docker.com/get-started/



what is a container? Simply put, a container is simply another process on your machine that has been isolated from all other processes on the host machine.

When running a container, it uses an isolated filesystem. This custom filesystem is provided by a container image. Since the image contains the container’s filesystem, it must contain everything needed to run an application - all dependencies, configuration, scripts, binaries, etc. The image also contains other configuration for the container, such as environment variables, a default command to run, and other metadata.

A Dockerfile is a text document that contains all the commands a user could call on the command line to assemble an image. When we tell Docker to build our image by executing the docker build command, Docker reads these instructions and execute them consecutively and create a Docker image as a result.

Now that we’ve created our Dockerfile, let’s build our image. To do this, we use the docker build command. The docker build command builds Docker images from a Dockerfile and a “context”. A build’s context is the set of files located in the specified PATH or URL. The Docker build process can access any of the files located in this context.

The build command optionally takes a --tag flag. The tag is used to set the name of the image.

