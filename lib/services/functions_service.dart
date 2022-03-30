import 'package:flutter/services.dart';
import 'package:voting_app/constants.dart';
import 'package:web3dart/web3dart.dart';

Future<DeployedContract> loadContract() async {
  ByteData abi = await rootBundle.load('assets/abi.json');

  String contractAddress = kContractAddress;

  final contract = DeployedContract(
      ContractAbi.fromJson(abi as String, "election"),
      EthereumAddress.fromHex(contractAddress));

  return contract;
}

// Future<String> callFunctions(
//     String functionName, List<dynamic> arguments, Web3Client ethClient) {}
