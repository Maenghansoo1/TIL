//bool 타입
void main() {
  // 📌 최대 허용 길이 설정 (상수)
  const maxLength = 6;

  // 📝 작가 이름 변수 선언
  var author = '개발하는남자유튜브';

  // 🔍 이름 길이가 maxLength보다 긴지 비교 → 결과는 bool 타입
  var isLengthOver = author.length > maxLength;

  // ✅ 조건문: 이름 길이에 따라 다른 메시지 출력
  if (isLengthOver) {
    // 조건이 true일 경우 실행
    print('작가 이름이 깁니다');
  } else {
    // 조건이 false일 경우 실행
    print('적당한 이름입니다.');
  }
}
