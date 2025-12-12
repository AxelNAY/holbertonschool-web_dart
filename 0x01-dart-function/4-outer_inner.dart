String inner(String name, String id) {
  var parts = name.split(" ");
  return "Hello Agent ${parts[1][0]}.${parts[0]} your id is $id";
}

void outer(String name, String id) {
  print(inner(name, id));
}
