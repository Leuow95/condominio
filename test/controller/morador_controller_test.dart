import 'package:condominio/controller/morador_controller.dart';
import 'package:condominio/models/morador_model.dart';
import 'package:condominio/services/morador_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MoradorServiceMock extends Mock implements MoradorService {}

class MoradorControllerMock extends Mock implements MoradorController {}

void main() {
  final service = MoradorServiceMock();

  final controller = MoradorController(service);
  test("Deve preencher variavel moradores", () async {
    when(() => service.getMoradores()).thenAnswer(
      (_) async => Future.delayed(
        const Duration(milliseconds: 800),
        () => [
          MoradorModel(
            id: 2,
            name: "Leonardo",
            apt: 01,
            bloco: 01,
          )
        ],
      ),
    );

    await controller.start();

    expect(controller.moradores, isA<List<MoradorModel>>());
  });

  test("Deve preencher variavel moradores", () async {
    when(() => service.getMoradores())
        .thenAnswer((_) async => <MoradorModel>[]);

    await controller.start();

    expect(controller.moradores, isA<List<MoradorModel>>());
  });
}
