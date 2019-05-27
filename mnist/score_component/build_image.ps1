$DOCKER_NAME = "scorecnn"
$REPOSITORY_NAME = "guobowen1990/mnist-score"
$TAG = "firsttry�

cp ../src/* ./src/
docker build -t $DOCKER_NAME .
Remove-Item -Force -Recurse ./src
docker tag $DOCKER_NAME ${REPOSITORY_NAME}:${TAG}
docker push $REPOSITORY_NAME