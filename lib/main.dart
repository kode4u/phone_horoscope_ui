import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(PhoneHoroscope());
}

class PhoneHoroscope extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Phone Horoscope"),
        ),
        body: Column(
          children: [
            Image.asset('assets/images/phone.png', width: 130),
            const Text(
              "លេខទូរស័ព្ទ",
              style: TextStyle(
                  color: Colors.blue, fontSize: 22, fontFamily: 'pali'),
            ),
            Container(
              margin: const EdgeInsets.all(16),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "លេខទូរស័ព្ទ",
                  labelStyle: TextStyle(fontFamily: 'siemreap'),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                //
                print(_controller.text);
                int i = int.parse(_controller.text) % 7;
                List data = [
                  "១. ល្អ",
                  "២. អត់ល្អ",
                  "៣. រកស៊ីមិនសូវកាក់កប",
                  "៤. ល្អណាស់",
                  "៥. អាក្រក់",
                  "៦. អាក្រក់ណាស់",
                  "៧. រកស៊ីកាក់កបល្អណាស់"
                ];
                print(data[i]);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.blue), // Background color
              ),
              child: const Text("ទាយ", style: TextStyle(color: Colors.white)),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              child: const Text(
                "លទ្ធផល",
                style: TextStyle(fontFamily: 'siemreap'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


//ក្បួន
// ១. ល្អ
// ២. អត់ល្អ
// ៣. រកស៊ីមិនសូវកាក់កប
// ៤. ល្អណាស់
// ៥. អាក្រក់
// ៦. អាក្រក់ណាស់
// ៧. រកស៊ីកាក់កបល្អណាស់