import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_app/src/utils/dimensions.dart';

class SuppliersScreen extends StatefulWidget {
  const SuppliersScreen({super.key});

  @override
  _SuppliersScreenState createState() => _SuppliersScreenState();
}

class _SuppliersScreenState extends State<SuppliersScreen> {
  List<dynamic> _suppliers = [];

  @override
  void initState() {
    super.initState();
    _fetchSuppliers();
  }

  Future<void> _fetchSuppliers() async {
    final response = await http
        .get(Uri.parse('https://servicios.campus.pe/proveedores.php'));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        _suppliers = data;
      });
    } else {
      throw Exception("Error al leer los datos");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Proveedores'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        body: Center(
            child: _suppliers.isEmpty
                ? const CircularProgressIndicator()
                : ListView.builder(
                    itemCount: _suppliers.length,
                    itemBuilder: (context, index) {
                      final supplier = _suppliers[index];
                      return Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: Dimensions.tinyPadding,
                              horizontal: Dimensions.smallPadding),
                          child: ListTile(
                            title: Text(supplier["nombreempresa"],
                                style: Theme.of(context).textTheme.titleLarge),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  supplier["nombrecontacto"],
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(supplier["cargocontacto"]),
                              ],
                            ),
                          ));
                    },
                  )),
      ),
    );
  }
}
