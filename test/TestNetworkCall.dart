
import 'package:flutter_test/flutter_test.dart';
import 'package:fun_flix/dartNetworking/DartAsyncAwaitCall.dart';
import 'package:fun_flix/dartNetworking/ModelNetworkCall.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'TestNetworkCall.mocks.dart';



@GenerateMocks([http.Client])
void main(){

  test("Network Call Success",() async{
      final mockClient = MockClient();


      when(
        mockClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users')),
      ).thenAnswer(
          (_) async =>
              http.Response(
                     '''[{
              "id": 1,
                  "name": "Leanne Graham",
                  "username": "Bret",
                  "email": "Sincere@april.biz",
                  "address": {
                  "street": "Kulas Light",
                  "suite": "Apt. 556",
                  "city": "Gwenborough",
                  "zipcode": "92998-3874",
                  "geo": {
                  "lat": "-37.3159",
                  "lng": "81.1496"
                  }
                  }}]''',200),
      );
          expect(await callFlutterTodo(), isA<List<User>>());
  });

  test("Network Call Failure",() async{
    final mockClient = MockClient();


    when(
      mockClient.get(Uri.parse('https://jsonplaceholder.typicode.com/users')),
    ).thenAnswer(
          (_) async =>
          http.Response(
              'Api Fail',404),
    );
    expect(callFlutterTodo(), throwsException);
  });

}