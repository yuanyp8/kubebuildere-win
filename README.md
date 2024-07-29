## step 1
docker build

## step 2
run command like this, your path is the kubebuilder project
```shell
 docker run -it -v <your-absolute-path>:/home1 <your-image:tag> tail -f /dev/null
```

