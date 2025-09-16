//리스트

void main() {
  // ✅ 1. 정적 리스트 (fixed-length list)
  // List<int>.filled(길이, 초기값) → 길이는 고정되며 값 변경은 가능, 추가/삭제는 불가능
  var fixedList = List<int>.filled(3, 0);
  fixedList[0] = 10; // 값 변경은 가능
  print('정적 리스트: $fixedList'); // 출력: [10, 0, 0]

  // ✅ 2. 가변 리스트 (growable list)
  // List.empty(growable: true) → 길이 제한 없이 값 추가/삭제 가능
  var variableList3 = List.empty(growable: true);
  variableList3.add(10); // int 추가
  variableList3.add('문자 추가'); // String 추가
  variableList3.add(true); // bool 추가
  print('가변 리스트: $variableList3'); // 출력: [10, 문자 추가, true]

  // ✅ 3. Dart의 타입 추론과 동적 리스트
  // Dart는 초깃값을 보고 타입을 추론함 → 서로 다른 타입이 섞이면 dynamic으로 추론됨
  var variableList2 = [1, 2, true]; // int + bool → dynamic 리스트로 추론됨
  variableList2.add(10); // int 추가
  variableList2.add('문자 추가'); // String 추가
  variableList2.add(true); // bool 추가
  print('동적 리스트: $variableList2'); // 출력: [1, 2, true, 10, 문자 추가, true]

  // ✅ 4. 원하는 길이의 리스트 생성 (List.generate)
  // List.generate(개수, 생성 함수) → 반복적으로 값을 생성하여 리스트 구성
  var valueList = List.generate(100, (index) => 'sample$index');
  print(
    '생성된 리스트 예시: ${valueList.sublist(0, 5)}',
  ); // 일부만 출력: [sample0, sample1, sample2, sample3, sample4]
}
