import 'dart:convert' ;
import 'package:http/http.dart' as http ;


Future createAlbum(String AT,String V,String AP,String RH ) async {
  final res = await http.post(
    Uri.parse('http://172.20.10.3:8000/api/model/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'AT': AT,
      'V': V,
      'AP': AP,
      'RH': RH,
    }),
  );


  if (res.statusCode == 200) return jsonDecode(res.body);
  else throw Exception("Failed to update album");


}
