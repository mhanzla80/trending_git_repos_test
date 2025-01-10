import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnectivityChecker {
  static final _singleton = InternetConnectivityChecker._internal();
  InternetConnectivityChecker._internal();
  bool hasShownNoInternet = false;

  final Connectivity _connectivity = Connectivity();

  static InternetConnectivityChecker get instance => _singleton;

  //This tracks the current connection status
  bool hasConnection = false;

  StreamController connectionChangeController = StreamController.broadcast();

  Stream get connectionChange => connectionChangeController.stream;

  void _connectionChange(_) => checkConnection();

  Future<void> initialize() async {
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    await checkConnection();
  }

  Future<bool> checkConnection() async {
    bool previousConnection = hasConnection;

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (previousConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }

    return hasConnection;
  }

  void dispose() {
    connectionChangeController.close();
  }
}
