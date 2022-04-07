import 'package:flutter/material.dart';
import 'package:web3dart/web3dart.dart';

class ElectionInfoScreen extends StatefulWidget {
  final Web3Client web3client;
  final String electionName;

  const ElectionInfoScreen(
      {Key? key, required this.electionName, required this.web3client})
      : super(key: key);

  @override
  _ElectionInfoScreenState createState() => _ElectionInfoScreenState();
}

class _ElectionInfoScreenState extends State<ElectionInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.electionName),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
