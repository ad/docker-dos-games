To run X-Com: Enemy unknown:

docker build --build-arg GAME_ARGS=\"UFO.BAT\" -t docker-dos-game .

docker run  --rm -p 8000:8000 docker-dos-game

open localhost:8000 in browser