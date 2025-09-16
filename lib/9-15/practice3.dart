// Final과 Const
// final : 변수 선언 후 한 번만 값을 할당할 수 있음
// const : 컴파일 시점에 값이 결졍되며, 이후 값을 변경할 수 없음

void main() {
  final String youtuber = '개발하는남자'; // 실행 중에 할당됨
  const String nickname = '개남'; // 컴파일 시점에 결정됨

  print('유튜버 이름: $youtuber');
  print('닉네임: $nickname');
}
