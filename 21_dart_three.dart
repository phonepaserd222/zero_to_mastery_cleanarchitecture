void main(List<String> args) {
//
  final (first, last) = records();
  print(first);
  print(last);
}

(String, String) records() {
  final firstName = "Max";
  final lastName = "steffen";
  return (firstName, lastName);
}
