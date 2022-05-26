import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest4_1915026020_gabriel/main_page.dart';

Future<dynamic> CustomAlert(BuildContext context, String teks) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Reminder"),
          content: Text(teks),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
                Get.to(ScreeningPage());
              },
              child: Text("OK"),
            )
          ],
        );
      });
}
