import 'package:flutter/material.dart';

class Stok extends StatefulWidget {
  const Stok({Key? key}) : super(key: key);

  @override
  _StokState createState() => _StokState();
}

class _StokState extends State<Stok> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          child: Center(
            child: DataTable(
              border: TableBorder.all(),
              columns: [
                DataColumn(
                  label: Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Golongan Darah',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Jumlah',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Keterangan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
              rows: <DataRow>[
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('1'),
                    ),
                    DataCell(
                      Text('A'),
                    ),
                    DataCell(
                      Text('80'),
                    ),
                    DataCell(
                      Text(''),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('2'),
                    ),
                    DataCell(
                      Text('O'),
                    ),
                    DataCell(
                      Text('30'),
                    ),
                    DataCell(
                      Text(''),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('3'),
                    ),
                    DataCell(
                      Text('AB'),
                    ),
                    DataCell(
                      Text('10'),
                    ),
                    DataCell(
                      Text(''),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
