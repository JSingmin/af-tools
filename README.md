# Azure Function Tools
This repo creates a docker image that can be used to run the Azure Function tools without requiring them to be installed.

## Building the image
Navigate to this directory and use the following command:
```bash
docker build -t af-tools .
```

## Running the image
Navigate to the directory you would like to develop from and use the following command:
```bash
docker run --rm -it -v "$(pwd):/usr/src/af-tools" -p 7071:7071 af-tools /bin/bash
```

Once bash has started, use the following commands to navigate to the working directory and create a function
```bash
cd ./af-tools
func init APPNAME --docker
```