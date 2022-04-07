import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:voting_app/constants.dart';
import 'package:voting_app/services/functions_service.dart';
import 'package:web3dart/web3dart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Client? httpClient;
  Web3Client? web3Client;
  TextEditingController electionPositionController = TextEditingController();

  _startElection() {
    if (electionPositionController.text.isNotEmpty &&
        electionPositionController.text != "") {
      startElection(electionPositionController.text, web3Client!);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    httpClient = Client();
    web3Client = Web3Client(kInfuraUrl, httpClient!);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: const Text("Start Election")),
      body: Container(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            TextField(
                controller: electionPositionController,
                decoration: const InputDecoration(
                    filled: true, hintText: "Enter Election name")),
            const SizedBox(height: 10),
            SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => _startElection,
                    child: const Text("Start Election")))
          ],
        ),
      ),
    ));
  }
}
