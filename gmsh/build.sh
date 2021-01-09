IMAGE=gdmcbain/gmsh:4.7.1.0
docker image build -t $IMAGE .
docker image push $IMAGE
