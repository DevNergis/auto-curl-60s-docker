#!/bin/bash

# URL 환경 변수가 설정되었는지 확인
if [ -z "$URL" ]; then
  echo "URL 환경 변수가 설정되지 않았습니다."
  exit 1
fi

# 무한 루프를 돌면서 curl 요청을 보냄
while true; do
  echo "$(date) - $URL 에 요청 보냅니다..."
  curl -s "$URL"
  echo "$(date) - 요청 완료"
  sleep 60  # 60초 대기
done
