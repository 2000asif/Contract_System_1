import 'package:contract_list_system/Contract_Model_Desin.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContractDetails extends StatefulWidget {
  const ContractDetails({Key? key, required this.Name}) : super(key: key);
  final ContractModel Name;

  Future<void> _makeCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'Call',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
    print('Data');
  }

  @override
  State<ContractDetails> createState() => _ContractDetailsState();
}

class _ContractDetailsState extends State<ContractDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Call Now '),
        textTheme: TextTheme(subtitle1: TextStyle()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 80,
          ),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                // backgroundImage: NetworkImage(Contract[index].Imageurl ?? ''),
                backgroundImage:
                    NetworkImage(widget.Name.Imageurl.toString() ?? ''),
                child: Text(
                 widget.Name.ContractName?.substring(0, 1).toUpperCase() ??
                      '',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                radius: 50,
              ),
            ),
          ),

          Text(
            widget.Name.ContractPhone.toString() ?? '',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold , fontStyle: FontStyle.italic),
          ),
          // Text(widget.Name.ContractName ?? '' , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          //  Text(widget.Name.ContractEmail ?? '' ,),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.call,
                    )),
              ),
              SizedBox(
                width: 100,
              ),
              //   CircleAvatar(child: Icon(Icons.video_call_outlined)),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.call_end,
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              //  CircleAvatar(child: Icon(Icons.add)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //  Text(widget.Name.ContractPhone.toString() ?? '', style: TextStyle(fontSize: 20),)
        ],
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
