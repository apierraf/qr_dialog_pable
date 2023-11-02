import 'package:flutter/material.dart';
import 'package:qr_dialog_pable/qr_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MaterialButton(
            onPressed: () async {
              await showQRDialog(context);
            },
            child: const Text('Scan Qr Code'),
          ),
        ),
      ),
    );
  }
}

//show dialog
Future<void> showQRDialog(BuildContext context) async {
  await showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        title: const Text('QR Code'),
        content: const QrView(),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          )
        ],
      );
    },
  );
}
