import 'package:condominio/app/pages/widgets/drawer.dart';
import 'package:condominio/controller/morador_controller.dart';
import 'package:condominio/services/morador_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final moradorController = MoradorController(moradorService);
  late final dio = Dio();
  late final moradorService = MoradorService(dio);

  @override
  void initState() {
    super.initState();
    moradorController.start();
    moradorController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    moradorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var morador = moradorController.moradores;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moradores"),
      ),
      drawer: const CustomDrawer(),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: moradorController.moradores.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(moradorController.moradores[index].name),
          subtitle: Text("${morador[index].bloco}"),
          trailing: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
