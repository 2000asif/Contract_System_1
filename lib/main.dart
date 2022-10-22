import 'package:contract_list_system/home_page.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MyApp());
}
// _sendingMails() async {
//   var url = Uri.parse("mailto:feedback@geeksforgeeks.org");
//   if (await canLaunchUrl(url)) {
//     await launchUrl(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }




class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        backgroundColor: Colors.green,
floatingActionButtonTheme: FloatingActionButtonThemeData(


)
      ),
      debugShowCheckedModeBanner:false,
      home: HomePage(),
    );
  }
}
