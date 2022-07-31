import 'package:flutter/material.dart';
import 'package:xpense/models/device_dimentions.dart';

class OnboardingScreen extends StatefulWidget {
  static String routeName = "OnboardingScreen";

  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static const currency = <String>[
    "Indian Rupee (INR)",
    "US Dollar (USD)",
    "European Pound (EUR)"
  ];

  void _submitDetails() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Details Submitted'),
        duration: Duration(milliseconds: 500),
      ),
    );
  }

  String? selectedCurrency = "Indian Rupee (INR)";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //decoration: BoxDecoration(color: Colors.greenAccent),
        padding: EdgeInsets.all(DeviceDimentions.width * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi,",
              style:
                  TextStyle(fontSize: 30.0 * DeviceDimentions.normalFontSize),
            ),
            Text(
              "Welcome to",
              style:
                  TextStyle(fontSize: 30.0 * DeviceDimentions.normalFontSize),
            ),
            Text(
              "Xpense",
              style: TextStyle(
                  fontSize: 50.0 * DeviceDimentions.normalFontSize,
                  fontFamily: 'Kanit',
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: DeviceDimentions.height * 0.08,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'What shall I call you ?',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                "Please choose your currency: ",
              ),
              trailing: DropdownButton<String>(
                onChanged: (item) => setState(() => selectedCurrency = item),
                value: selectedCurrency,
                items: currency
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: DeviceDimentions.height * 0.15,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: _submitDetails,
                    child:
                        const Text("Submit", style: TextStyle(fontSize: 20))))
          ],
        ),
      ),
    );
  }
}
