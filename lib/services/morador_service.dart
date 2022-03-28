import 'package:condominio/models/morador_model.dart';
import 'package:dio/dio.dart';

class MoradorService {
  final baseUrl = "http://localhost:1337/api/moradors";
  final urlPc = "http://192.168.100.11/api/morador";
  final Dio dio;

  MoradorService(this.dio);

  Future<List<MoradorModel>> getMoradores() async {
    final response = await dio.get(baseUrl);

    final json = response.data;
    final list = json["data"] as List;

    final moradores = list.map((json) => MoradorModel.fromJson(json)).toList();

    return moradores;
  }

  Future deleteMoradorById({required int idMorador}) async {
    await dio.delete(baseUrl + "/$idMorador");
  }
}
