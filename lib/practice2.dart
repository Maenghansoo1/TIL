//Late 변수
//Late변수는 나중에 변수를 초기화 시키겠다는 뜻
late String bookName;

void main() {
  bookName = makeBookName();
  print(bookName.length); // or print(bookName!.length)
}

String makeBookName() {
  return '핸즈온 플러터';
}
