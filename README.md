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

## ✨ Introduce  
Onboarding이란 어플 소개 및 사용법을 알려주는 기능이다.  
`introduction_screen` 이라는 패키지를 사용해 Onboarding 기능을 구현한다.  
어플 최초 실행시 한번만 보여주고 비활성화 시켜줘야 하기때문에 봤다는 값을 어느곳에 기록해야한다.  
메모리가 아닌 다른 곳에 저장하는 기능중 하나인 파일저장 패키지인 `shared_preferences` 를 사용한다.

<br>

## ✨ Point  
1. 패키지 활용
2. 메모리 저장이 아닌 기기에 데이터를 저장하는 방법 중 하나 알기

<br>

## ✨ 기능 소개
1. 어플을 소개하는 onboarding 기능 구현.  
    [introduction_screen](https://pub.dev/packages/introduction_screen) package 사용.
2. onboard 를 한번만 보여주고 안보이게 처리  
    어플내에 소스코드를 저장시키기는 방법  
    [shared_preferences](https://pub.dev/packages/shared_preferences/example) package 사용

<br>

## ✨ 기록 - 정리할 기능 및 용어

### Navigation  
- Flutter에서 screen 과 page 는 route 로 불린다.
- Navigator.push()를 사용하여 두 번째 route로 전환한다.
- Navigator.pop()을 사용하여 첫 번째 route로 되돌아 온다.

### Package  
Flutter의 Package는 pugin 이라고도 불린다. 디버그 콘솔 pugin이 뜬다고 어리둥절X.

### 데이터를 메모리가 아닌 다른 곳에 저장해 앱을 재시작 해도 이전 데이터를 유지하는 방법  
1. 기기에 파일로 저장하기
2. 기기 데이터베이스에 저장하기
3. 다른 컴퓨터에(서버)에 저장하기

### 메모리가 아닌 다른 곳에 저장하는 법
1. 기기에 파일로 저장하기
내용을 파일로 저장하고 앱 시작시 파일을 읽어오는 방식  
(패키지 : [shared_preferences](https://pub.dev/packages/shared_preferences/example))
2. 기기 데이터베이스에 저장하기
SQList라는 DB에 저장하여 데이터를 보존하게 할 수 있다. 파일과 다르게 좀 더 복잡한 데이터를 기기에 저장할 수 있다.  
(패키지 : [sqflite](https://pub.dev/packages/sqflite))
3. 서버에 저장하기

<br>


