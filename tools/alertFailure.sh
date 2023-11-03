# get current info
SLACK_WEBHOOK_URL=$1
REPO_URL=$2
PR_CONTENT=$3
SLACK_CHANNEL_NAME=$4

MESSAGE="Deploy Failed!
Tried to update: ${PR_CONTENT}
Repo: ${REPO_URL}"

echo $MESSAGE
# 슬랙 채널로 메시지 요청
curl -X POST --data-urlencode "payload={\"channel\": \"#${SLACK_CHANNEL_NAME}\", \"username\": \"Alert Manager\", \"text\": \"${MESSAGE}\", \"icon_emoji\": \":seal:\"}" $SLACK_WEBHOOK_URL