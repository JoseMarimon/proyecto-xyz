import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  final List<Map<String, String>> vehicles = [
    {'placa': 'ERF888', 'conductor': 'Juan Carlos', 'empresa': 'XYZ'},
    {'placa': 'ERF888', 'conductor': 'Rolando Meza', 'empresa': 'XYZ'},
    {'placa': 'ERF888', 'conductor': 'Fernando David', 'empresa': 'XYZ'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: vehicles.length,
        itemBuilder: (context, index) {
          final vehicle = vehicles[index];
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                color: Colors.grey[300],
                child: Center(child: Text('IMG')),
              ),
              title: Text('Placa: ${vehicle['placa']}'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Conductor: ${vehicle['conductor']}'),
                  Text('Empresa: ${vehicle['empresa']}'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}