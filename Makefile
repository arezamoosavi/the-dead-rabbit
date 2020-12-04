build:
    docker build -t my-rabbit .

run:
    docker run -it --name rabbit-runner my-rabbit:latest