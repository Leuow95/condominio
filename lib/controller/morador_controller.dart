import 'package:condominio/services/morador_service.dart';
import 'package:dio/dio.dart';

class MoradorController {
  final MoradorService moradorService = MoradorService(Dio());
}
