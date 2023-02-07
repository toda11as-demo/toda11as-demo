# Final Project: Ssh docker slack pipeline action
- **성균관대학교 SW전문가와 함께 하는 SW코칭 프로그램**을 통해 진행된 프로젝트입니다.
- **프로젝트 진행기간**: 2023년 1월 18일 ~ 2023년 2월 7일

## Description
다음과 같은 목표들을 달성했습니다.  
#### 1) 도커를 이용한 코드 배포 자동화
> - 메인 브랜치로 머지가 되면 -> SSH를 통해서 원하는 원격 서버( AWS )에 접속 -> 도커로 배포
>    ㄴ 옵션 1) 특정 브랜치 머지되면 도커허브에 올리는 액션 -> 전년도 팀이 구현한 방법 참고
>    ㄴ 옵션 2) git clone -> 이미지 빌드 -> 컨테이너 올리기(도커컴포즈)
>    ㄴ AWS 환경을 구성(git, 도커, 노드+ 필요라이브러리)
>     
#### 2) 테스트용 노드앱 작성
>
#### 3) 배포 상태에 따른 슬랙 알림메세지
> - 성공여부 체크
> - PR 메세지 title 파싱
> - 슬랙 API(slack-send action)를 이용해 특정 채널에 알림
 
#### 4) 성공적 배포 이후 자동으로 태깅+릴리즈
> - 버전정보 추출

## Contributors

- 소프트웨어학과 김진녕 DivisonOfficer
- 소프트웨어학과 정승혁 meltingOcean
- 소프트웨어학과 정주은 JooEun-Jeong

## Link

https://github.com/JooEun-Jeong/22GitHubWinter