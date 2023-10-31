#!/bin/zsh

source op-token.sh

SLUG="gh/denislemire/coin-flip"

curl --request POST \
  --url https://circleci.com/api/v2/project/${SLUG}/checkout-key \
  --header "Circle-Token: $CIRCLE_TOKEN" \
  --header 'content-type: application/json' \
  --data '{"type":"user-key"}'
