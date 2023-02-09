import 'package:flutter/material.dart';

class GTMBottomSheet extends StatelessWidget {
  const GTMBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Expanded(child: Divider()),
              Text(
                  "How We Calculate Delivery Charges"),
              Expanded(child: Divider()),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            child: DataTable(rows: const [
              DataRow(cells: [
                DataCell(Text('Rs. 1 to 200')),
                DataCell(Text('Free Delivery Not '
                    'applicable')),
                DataCell(Text('Rs. 20/km')),
              ]),
              DataRow(cells: [
                DataCell(Text('Rs. 1 to 200')),
                DataCell(Text('Free Delivery Not '
                    'applicable')),
                DataCell(Text('Rs. 20/km')),
              ]),
              DataRow(cells: [
                DataCell(Text('Rs. 1 to 200')),
                DataCell(Text('Free Delivery Not '
                    'applicable')),
                DataCell(Text('Rs. 20/km')),
              ]),
              DataRow(cells: [
                DataCell(Text('Rs. 1 to 200')),
                DataCell(Text('Free Delivery Not '
                    'applicable')),
                DataCell(Text('Rs. 20/km')),
              ]),
              DataRow(cells: [
                DataCell(Text('Rs. 1 to 200')),
                DataCell(Text('Free Delivery Not '
                    'applicable')),
                DataCell(Text('Rs. 20/km')),
              ]),
            ], columns: const [
              DataColumn(
                label: Text(
                  "Order Amount",
                ),
              ),
              DataColumn(
                label: Text(
                  "Note",
                ),
              ),
              DataColumn(
                label: Text(
                  "Delivery Charge",
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
