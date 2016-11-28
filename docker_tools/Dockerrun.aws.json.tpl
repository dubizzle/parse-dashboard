{
  "AWSEBDockerrunVersion": "1",
  "Image": {
    "Name": "{{ IMAGE_NAME }}:{{ IMAGE_VERSION }}",
    "Update": "true"
  },
  "Authentication": {
      "Bucket": "shedd-build-deps",
      "Key": "generic/docker/.dockercfg"
  },
  "Ports": [
    {
      "ContainerPort": "4040"
    }
  ],
  "Logging": "/parse/dashboard/logs"
}
