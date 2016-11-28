# Ex: Run the Docker image with the Tag "e41dfc5"
# ./local_run.sh e41dfc5

SHEDD_DOCKER_TAG=$1
SHEDD_DEFAULT_CONTAINER_NAME=shedd_parse_dashboard
SHEDD_ENV_FILENAME=staging_env
PORT=4050

echo $SHEDD_DOCKER_TAG

docker stop $SHEDD_DEFAULT_CONTAINER_NAME
# We remove the container to update its environment variables (A LOT OF VARIABLES)
docker rm -v $SHEDD_DEFAULT_CONTAINER_NAME
docker run -it --name $SHEDD_DEFAULT_CONTAINER_NAME --env-file $SHEDD_ENV_FILENAME -p $PORT:$PORT dubizzledotcom/shedd-parse-dashboard:$SHEDD_DOCKER_TAG

