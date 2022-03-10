import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:condominio/services/morador_service.dart';

class DioMock extends Mock implements DioForNative {}

class ResponseMock extends Mock implements Response {}

void main() async {
  test('Should return a list of MoradorModel', () async {
    final dioMock = DioMock();
    final responseMock = ResponseMock();

    when(() => responseMock.data).thenReturn(jsonDecode(jsonText));
    when(() => dioMock.get(any())).thenAnswer((_) async => responseMock);

    final moradorService = MoradorService(dioMock);
    final response = await moradorService.getMoradores();

    expect(response.length, 2);
    expect(response[0].name, "ALEXIA MARA MOLEDO MAMED");
    expect(response[0].bloco, 22);
  });
}

const jsonText = r'''
{
  "data": [
    {
      "id": 1,
      "attributes": {
        "name": "ALEXIA MARA MOLEDO MAMED",
        "bloco": 22,
        "apt": 851,
        "createdAt": "2022-03-09T12:47:58.564Z",
        "updatedAt": "2022-03-10T01:16:45.027Z",
        "publishedAt": "2022-03-09T14:42:36.114Z"
      }
    },
    {
      "id": 2,
      "attributes": {
        "name": "LEONARDO MAIA DE LIMA",
        "bloco": 23,
        "apt": 101,
        "createdAt": "2022-03-09T13:47:10.117Z",
        "updatedAt": "2022-03-09T14:42:44.486Z",
        "publishedAt": "2022-03-09T14:42:44.485Z"
      }
    }
  ],
  "meta": {
    "pagination": {
      "page": 1,
      "pageSize": 25,
      "pageCount": 1,
      "total": 2
    }
  }
}
''';
