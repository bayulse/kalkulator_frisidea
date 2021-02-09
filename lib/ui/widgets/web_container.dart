import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebContainer extends StatelessWidget {
  final String url;

  const WebContainer({Key key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$url'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
