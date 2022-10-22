import 'package:contract_list_system/Contract2_Details.dart';
import 'package:contract_list_system/Contract_Model_Desin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  Future<void> _makeSms(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
    print('Data');
  }

  Future<void> _makeCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'Call',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
    print('Data');
  }









  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          " Contract",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              fontStyle: FontStyle.italic),
        ),),


      body: ListView.builder(
          itemCount: Contract.length,
          itemBuilder: (_, index) {
            return ListTile(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ContractDetails(Name: Contract[index])),
              ),
              contentPadding: EdgeInsets.all(10.0),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(Contract[index].Imageurl ?? ''),
                radius: 30.0,
                backgroundColor: Colors.blue,
                child: Text(
                  Contract[index].ContractName?.substring(0, 1).toUpperCase() ??
                      '',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                Contract[index].ContractName ?? '',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text(
                Contract[index].ContractPhone.toString() ?? '',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                      onTap: () => _makeCall(Contract[index].ContractEmail!),
                      child: CircleAvatar(child: Icon(Icons.phone))),
                  SizedBox(
                    width: 6,
                  ),
                  GestureDetector(
                      onTap: () => _makeSms(Contract[index].ContractPhone!),
                      child: CircleAvatar(child: Icon(Icons.message))),
                ],
              ),
            );
          }),
    );
  }
}
