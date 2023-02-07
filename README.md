# Final Project: Ssh docker slack pipeline action
- **성균관대학교 SW전문가와 함께 하는 SW코칭 프로그램**을 통해 진행된 프로젝트입니다.
- **프로젝트 진행기간**: 2023년 1월 18일 ~ 2023년 2월 7일


## Description
다음과 같은 목표들을 달성했습니다.  
#### 1) 도커를 이용한 코드 배포 자동화
> - 메인 브랜치로 머지가 되면 -> SSH를 통해서 원하는 원격 서버( AWS )에 접속 -> 도커로 배포  
>    ㄴ 옵션 1) 특정 브랜치 머지되면 도커허브에 올리는 액션  
>    ㄴ 옵션 2) git clone -> 이미지 빌드 -> 컨테이너 올리기(도커컴포즈)  
>    ㄴ AWS 환경을 구성(git, 도커, 노드+ 필요라이브러리)  
>    옵션 1을 선택
#### 2) 테스트용 노드앱 작성
> - 테스트를 위해서 도커이미지가 될 노드 앱을 작성
> - 도커파일에 작성해야할 내용을 정리
#### 3) 배포 상태에 따른 슬랙 알림메세지
> - 성공여부 체크
> - PR 메세지 title 파싱
> - 슬랙 API(slack-send action)를 이용해 특정 채널에 알림
 
#### 4) 성공적 배포 이후 자동으로 태깅+릴리즈

> - 커밋메세지를 바탕으로한 버전정보 추출

## Prerequisite
### <도커를 이용한 코드 배포 자동화를 위한 준비>
1) 구독할 레포로 이동 > `Settings` > `Secrets and variables` > `Actions`에 들어갑니다.  
2) `new repository secret`을 클릭하여 다음 정보를 입력하고 등록합니다  
   > - DOCKERHUB_TOKEN: (도커허브의 token)
   > - DOCKERHUB_USERNAME: (도커허브의 user name)
   > - HOST: (AWS의 host)
   > - PASSWORD: (AWS의 password)
   > - PORT: (AWS의 사용 포트번호)
   > - USERNAME: (AWS의 user name)

<img src="https://user-images.githubusercontent.com/54920318/217333708-b352cc78-64b6-4215-8335-e7eb75011301.png" width="70%">  


### <슬랙 채널에 알림을 보내기 위한 준비>
1) 슬랙 좌측 메뉴 `더보기`에서 `앱`을 선택합니다.
<img src="https://user-images.githubusercontent.com/54920318/217194470-52c4e186-9204-4ff6-b98f-1b8624167227.png" width="25%">  

2) `incoming webhooks`앱을 추가합니다.  

![image](https://user-images.githubusercontent.com/54920318/217194839-a6956a22-c1d8-45bb-87c6-f74cd202aaf6.png)  

3) 알림 받을 채널을 선택합니다.  
   
4) 웹후크 URL을 복사합니다.  
   
5) 구독할 레포로 이동 > `Settings` > `Secrets and variables` > `Actions`에 들어갑니다.   
<img src="https://user-images.githubusercontent.com/54920318/217195392-1a8e2fe4-8d71-4a1e-ada1-151e8b1b0e92.png" width="70%">
6) `new repository secret`을 클릭하여 다음 정보를 입력하고 등록합니다  
- Name: SLACK_WEBHOOK_URL
- Secret: `복사한 웹후크 URL`  


## Contributors

- 소프트웨어학과 김진녕 DivisonOfficer
- 소프트웨어학과 정승혁 meltingOcean
- 소프트웨어학과 정주은 JooEun-Jeong

## Link
https://github.com/toda11as-demo/toda11as-demo


