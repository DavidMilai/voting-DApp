import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:voting_app/constants.dart';
import 'package:web3dart/web3dart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Client? httpClient;
  Web3Client? web3Client;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    httpClient = Client();
    web3Client = Web3Client(kInfuraUrl, httpClient!);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
