//변수 초기화
void main() {
  String?
  bookName; //String bookName 초깃값을 지정하거나 물음표를 사용하여 변수가 null값을 가질 수 있음을 컴파일러에게 알려야함
  //print(bookName.length); null값을 가질 수 있는 변수이므로 바로 사용 불가
  if (bookName != null) {
    print(bookName.length);
  }
  /* OR
print(bookName?.length); 사용*/
}
