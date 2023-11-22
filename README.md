# 📖JAVA Project-Airline Web
JSP + MySQL - '항공사 예매 사이트'     
<br/>
## 💻프로젝트 소개
항공권 등록/예매를 위한 항공사 사이트입니다.
<br/><br/>
## 📆개발 기간
22.03.20 - 22.07.03
<br/><br/>
## ⚙️개발 환경
JSP - eclipse

WAS - Apache Tomcat

Database - MySQL
<br/><br/>
## 📌주요 기능
###  관리자(항공사)
- ##### 관리자 로그인
　　\- 관리자 로그인 후 세션 생성
- ##### 항공편 등록
　　\- 도착지, 출발 시간 입력 후 항공편 등록
- ##### 항공편 확인
　　\- 등록한 항공편 확인/변경/삭제
- ##### 등록 회원 관리
　　\- 등록된 회원 삭제, 회원 삭제 시 회원이 예매한 티켓도 동시 삭제
  - ##### 로그아웃
　　\- 세션 종료
  
---
###  사용자(승객)
- ##### 회원가입
　　\- 아이디, 비밀번호, 이메일 입력 후 유효성 검사를 거쳐 회원가입
- ##### 로그인
　　\- 사용자 로그인 후 세션 생성
- ##### 항공편 확인
　　\- 관리자(항공사)가 등록한 항공편 확인 
- ##### 항공권 예매
　　\- 관리자(항공사)가 등록한 항공편 중에서 티켓 예매
- ##### 예매 확인
　　\- 사용자(승객)이 예매한 티켓 확인, 변경, 삭제
- ##### 로그아웃
　　\- 세션 종료
  
<br/>

--- 
#### 🔜향후 계획
- UI 수정
- 출발지 데이터 추가, 좌석 수 데이터 추가
- 항공사 선택 기능 추가, 좌석 선택 기능 추가
- 마일리지 기능 추가
