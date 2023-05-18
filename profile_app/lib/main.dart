import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Poppins",
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
    ),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile App"),
        elevation: 20,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 32.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://fastly.picsum.photos/id/313/200/200.jpg?hmac=rh2PdOLFkEclUr6nN2KdavcsSZIHVkYnv9D0BtJjykA"),
                ),
              ),
            ),
            const Divider(
              height: 80,
            ),
            // name section
            const Row(
              children: [
                Icon(Icons.person),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "NAME",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Text("ali bin abu"),
            const SizedBox(
              height: 20,
            ),
            // email section
            const Row(
              children: [
                Icon(Icons.email),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "EMAIL",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Text("ali@gmail.com"),
            const SizedBox(
              height: 20,
            ),
            // like count section
            const Text(
              "LIKE COUNT",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Text("$counter"),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.thumb_up_sharp),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
