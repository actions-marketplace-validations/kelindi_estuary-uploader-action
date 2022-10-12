#!/bin/sh

ipfs init
ipfs daemon &
waitForIpfs
ipfs pin remote service add origin https://api.estuary.tech/pinning $ACCESS_TOKEN
CID=$(ipfs add -r -q --cid-version 1 "${UPLOAD_PATH:='./'}" | tail -1)
$TIME = ${{ env.github.event.repository.updated_at}}
ipfs pin remote add --service=origin --name=${NAME:="$GITHUB_REPOSITORY$TIME"} $CID

echo "::set-output name=cid::$CID"
