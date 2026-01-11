import 'dart:convert';

void main() {
  
//   String json = '''
//     {
//       "usuario": "lanaro08.com",
//       "senha" : "123456",
//       "permissoes" : [
//         "owner", "admim"
//       ]
//     }
//   ''';

//   print(json);

//   Map resultJson = jsonDecode(json);
//   print(resultJson["permissoes"]);
  
  Map mapa = {
    'mome' : 'deivid',
    'pass' : 123,
    'permissions': ['owner', 'admim']
  };
  
  var result = jsonEncode(mapa);
  print(result);
}
