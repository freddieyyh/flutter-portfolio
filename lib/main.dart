import 'package:flutter/material.dart';
import 'package:sample/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColor,
        canvasColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: Colors.white)
          .copyWith(
            bodyText1: TextStyle(color: bodyTextColor),
            bodyText2: TextStyle(color: bodyTextColor)
        )
      ),
      home: HomeScreen(),
    );
  }
}
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Scaffold(
//           appBar: AppBar(),
//           body: Container(
//
//           ),
//           bottomNavigationBar: BottomAppBar(
//             child: SizedBox(
//               height: 70,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: const [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)],
//               ),
//             ),
//           ),
//         )
//     );
//   }
// }
