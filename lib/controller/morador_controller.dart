import 'package:condominio/models/morador_model.dart';
import 'package:condominio/services/morador_service.dart';

class MoradorController {
  List<MoradorModel> moradores = [];

  final MoradorService moradorService;

  MoradorController(this.moradorService);

  Future start() async {
    moradores = await moradorService.getMoradores();
  }
}
