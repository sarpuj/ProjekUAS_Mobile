import 'package:flutter/material.dart';

class RS extends StatefulWidget {
  const RS({Key? key}) : super(key: key);

  @override
  _RSState createState() => _RSState();
}

class _RSState extends State<RS> {
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Rumah Sakit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Alamat',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                DataColumn(
                  label: Text(
                    'Kontak',
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
                      Text('RSUD Wates'),
                    ),
                    DataCell(
                      Text(
                          'Jalan Tentara Pelajar Km. 1 No. 5, Area Sawah, Beji, Kec. Wates, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55651'),
                    ),
                    DataCell(
                      Text('(0274) 773169'),
                    ),
                  ],
                ),
                DataRow(
                  cells: <DataCell>[
                    DataCell(
                      Text('2'),
                    ),
                    DataCell(
                      Text('RSU Queen Latifa Kulon Progo'),
                    ),
                    DataCell(
                      Text(
                          'Jl. Yogyakarta - Wates No.KM 21, Wora Wari, Sukoreno, Kec. Sentolo, Kabupaten Kulon Progo, Daerah Istimewa Yogyakarta 55664'),
                    ),
                    DataCell(
                      Text('(0274) 2890679'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}
