import 'package:flutter/material.dart';

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
            child: Column(
              spacing: 12,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjyh10kWg_lDEPoANS9v00N5MFSlSiTlC_JA&s"),
              ),
              Text(
                "isaias",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text("vive por aí no mundo."),
                SizedBox(height: 15),
                Text("- Mobile"),
                Text("- Front"),
                Text("- Back"),
                SizedBox(height: 15),
                ElevatedButton(onPressed: (){}, child: Text("Contato"),)
            ],
          ),
        ),
      ),
    );
  }
}
