import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(title: const Text('lio')),
        body: MyStatefulsWidget(),
      ),
    );
  }
}

// Widget containing appBar Scaffold

// class MyStatelessWidget extends StatelessWidget {
//   const MyStatelessWidget({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Omletes and Chickens'),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 ScaffoldMessenger.of(context)
//                     .showSnackBar(const SnackBar(content: Text("You a BITCH")));
//               },
//               icon: const Icon(Icons.add_road_sharp))
//         ],
//       ),
//       body: const Center(
//         child: Text(
//           'Hi there',
//           style: TextStyle(fontSize: 48),
//         ),
//       ),
//     );
//   }
// }

class MyStatefulsWidget extends StatelessWidget {
  const MyStatefulsWidget({Key? key}) : super(key: key);

  final String _title = "This is my Title";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        // color: Color.fromARGB(200, 133, 55, 777),
        child: Banner(
          location: BannerLocation.topEnd,
          message: "new",
          child: Container(
            height: 200,
            width: 200,
            color: Color.fromARGB(255, 82, 82, 82),
            alignment: Alignment.center,
            child: const Text(
              "mambo",
              style: TextStyle(fontSize: 50, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
