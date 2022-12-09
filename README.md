<!--
프로젝트 끝나면 각 기능들을 정리한 새로운 나만의 프로젝트를 만들어 깃허브에 올리자.
시간이 많이 걸리더라도 해야 내것이 된다.
-->

# flutter-onboarding
Flutter onbarding system with shared_preferences

Used packege list   
- [introduction_screen](https://pub.dev/packages/introduction_screen)
- [shared_preferences](https://pub.dev/packages/shared_preferences/example)

---

<br>

## Introduce  
onboarding이라는 패키지를 사용해 onboard 기능을 구현하며 shared_preferences 패키지를 사용하여 데이터를 저장하기.

<br>

## Point  
1. 패키지 사용법
2. 메모리 저장이 아닌 기기에 데이터를 저장하는 방법 중 하나 알기

<br>

## 기능 소개
1. 어플을 소개하는 onboard 기능 구현
    `introduction_screen` package 사용
2. onboard 를 한번만 보여주고 안보이게 처리
    어플내에 소스코드를 저장시키기는 방법

<br>

## 기록 - 정리할 기능 및 용어

### Navigation  
- Flutter에서 screen 과 page 는 route 로 불린다.
- Navigator.push()를 사용하여 두 번째 route로 전환합니다.
- Navigator.pop()을 사용하여 첫 번째 route로 되돌아 옵니다.

### Package  
Flutter의 Package는 pugin 이라고도 불린다. 디버그 콘솔 pugin이 뜬다고 어리둥절X.

### 데이터를 메모리가 아닌 다른 곳에 저장해 앱을 재시작 해도 이전 데이터를 유지하는 방법  
1. 기기에 파일로 저장하기
2. 기기 데이터베이스에 저장하기
3. 다른 컴퓨터에(서버)에 저장하기

<br>


