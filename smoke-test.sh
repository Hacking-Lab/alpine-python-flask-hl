#!/bin/bash

set -euo pipefail

image=alpine-python-flask-hl-smoke
container=alpine-python-flask-hl-smoke

cleanup() {
    docker rm -f "$container" >/dev/null 2>&1 || true
}

cleanup
trap cleanup EXIT

docker build -t "$image" .
docker run -d --name "$container" -e AUTHOR=smoke -e HL_USER_USERNAME=hacker "$image" >/dev/null

for _ in 1 2 3 4 5 6 7 8 9 10; do
    if docker exec "$container" wget -qO- http://127.0.0.1:8080/ 2>/dev/null | grep -q "Found: alpine python flask docker"; then
        echo "Smoke test passed"
        exit 0
    fi
    sleep 1
done

docker logs "$container"
echo "Smoke test failed" >&2
exit 1
