FROM node:16-alpine AS runner 

RUN apk update && apk add bash python3 make gcc g++ curl

RUN npm i -g yarn node-prune typescript --force

USER 1

CMD ["yarn", "--non-interactive --prod && node-prune"]