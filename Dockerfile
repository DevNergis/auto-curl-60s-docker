FROM alpine:latest

# 필요한 패키지 설치 (curl 및 bash)
RUN apk add --no-cache curl bash

# 스크립트 추가
COPY entrypoint.sh /entrypoint.sh

# 실행 권한 부여
RUN chmod +x /entrypoint.sh

# 컨테이너 시작 시 스크립트 실행
ENTRYPOINT ["/entrypoint.sh"]
