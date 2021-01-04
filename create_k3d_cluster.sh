k3d cluster create demo \
    --api-port 6550 \
    --port 5050:80@loadbalancer \
    --port 8080:8080@loadbalancer \
    --port 9090:9090@loadbalancer \
    --port "30000-32767:30000-32767@server[0]" \
    --volume "/install/registries.yaml:/etc/rancher/k3s/registries.yaml"
