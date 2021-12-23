FROM node:16-alpine

WORKDIR site
COPY index.html js-dos.js wdosbox.js wdosbox.wasm.js /site/
RUN npm install -g serve

COPY game.zip .
RUN ls -la /site/

ARG GAME_ARGS
RUN sed -i s/GAME_ARGS/$GAME_ARGS/ index.html
ENTRYPOINT npx serve -l tcp://0.0.0.0:8000