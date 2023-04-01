import 'package:flutter/material.dart';

class Natija extends StatelessWidget {
  final int natija;
  final int questionLength;
  final Function() restart;

  Natija(this.natija, this.questionLength, this.restart);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Natija: $natija/$questionLength",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          ElevatedButton.icon(
            onPressed: restart,
            icon: Icon(Icons.restart_alt),
            label: Text('RESTART'),
          )
        ],
      ),
    );
  }
}
