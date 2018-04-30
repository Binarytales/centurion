CLIENT=$'\033[0;36m'
SERVER=$'\033[0;33m'
RESET=$'\033[0m' # No Color

trap "kill 0" EXIT

(cd client && yarn start | sed "s/^/${CLIENT}[client]${RESET} /") &
(cd server && yarn start | sed "s/^/${SERVER}[server]${RESET} /") &

wait
