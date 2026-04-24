#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="ros2-bumperbot"
CONTAINER_NAME="bumperbot"
DOCKERFILE_PATH="DockerFile"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

usage() {
	echo "Usage: $0 [x11|build|run|full]"
	echo "  x11   - allow local root access to X server"
	echo "  build - build Docker image"
	echo "  run   - run container named '$CONTAINER_NAME' or attach if already running"
	echo "  full  - run x11, build, and run in order"
}

allow_x11() {
	xhost +local:root
}

build_image() {
	docker build -f "$DOCKERFILE_PATH" -t "$IMAGE_NAME" .
}

run_or_attach() {
	if docker ps --format '{{.Names}}' | grep -Fxq "$CONTAINER_NAME"; then
		echo "Container '$CONTAINER_NAME' is already running. Opening a shell in it..."
		docker exec -it "$CONTAINER_NAME" bash
		return
	fi

	if docker ps -a --format '{{.Names}}' | grep -Fxq "$CONTAINER_NAME"; then
		echo "Removing old stopped container '$CONTAINER_NAME'..."
		docker rm "$CONTAINER_NAME" >/dev/null
	fi

	docker run -it --rm \
		--name "$CONTAINER_NAME" \
		--gpus all \
		--net=host \
		-e DISPLAY="$DISPLAY" \
		-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
		-v /dev/bus/usb:/dev/bus/usb \
		--device /dev/input \
		--device-cgroup-rule='c 13:* rmw' \
		--device-cgroup-rule='c 189:* rmw' \
		-v /run/udev:/run/udev:ro \
		"$IMAGE_NAME"
}

case "${1:-run}" in
	x11)
		allow_x11
		;;
	build)
		build_image
		;;
	run)
		run_or_attach
		;;
	full)
		allow_x11
		build_image
		run_or_attach
		;;
	*)
		usage
		exit 1
		;;
esac

