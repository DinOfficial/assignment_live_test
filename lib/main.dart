import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContactListUI(),
    );
  }
}

class ContactListUI extends StatelessWidget {
  final List<Map<String, String>> dummyContacts = [
    {"name": "Jawad", "number": "01877-777777"},
    {"name": "Ferdous", "number": "01677-777777"},
    {"name": "Hasan", "number": "01745-777777"},
    {"name": "Hasan", "number": "01745-777777"},
    {"name": "Hasan", "number": "01745-777777"},
    {"name": "Hasan", "number": "01745-777777"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Contact List"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: const InputDecoration(
                    labelText: "Number",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    minimumSize: const Size(double.infinity, 45),
                  ),
                  onPressed: () {},
                  child: const Text("Add"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: dummyContacts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  child: ListTile(
                    leading: const Icon(Icons.person),
                    title: Text(
                      dummyContacts[index]['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    subtitle: Text(dummyContacts[index]['number']!),
                    trailing: const Icon(Icons.phone, color: Colors.blue),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
