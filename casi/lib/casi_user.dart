import 'dart:convert';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class CasiUser {
  String _loginURL = "https://auth.devclub.in/user/login";
  Map<String, dynamic> _cookies;

  void signIn() async {
    final webview = new FlutterWebviewPlugin();
    webview.onUrlChanged.listen((url) async {
      _cookies = await webview.getCookies();
      print(jsonEncode(_cookies));
    });
    webview.onDestroy.listen((event) {
      webview.dispose();
    });
    await webview.launch(_loginURL, ignoreSSLErrors: true);
  }
}
