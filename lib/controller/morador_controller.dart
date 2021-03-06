import 'package:condominio/models/morador_model.dart';
import 'package:condominio/services/morador_service.dart';
import 'package:flutter/material.dart';

class MoradorController extends ChangeNotifier {
  List<MoradorModel> moradores = [];

  final MoradorService moradorService;

  MoradorController(this.moradorService);

  Future start() async {
    moradores = await moradorService.getMoradores();
    notifyListeners();
  }

  Future delete({required int idMorador}) async {
    await moradorService.deleteMoradorById(idMorador: idMorador);
    // notifyListeners();
  }

  Future addMorador({required MoradorModel morador}) async {
    await moradorService.addMorador(morador: morador);
    notifyListeners();
  }
}
