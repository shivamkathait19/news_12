import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailViewScreen extends StatefulWidget {
  String newUri;
  DetailViewScreen({super.key,required this.newUri});

  @override
  State<DetailViewScreen> createState() => _DetailViewScreenState();
}

class _DetailViewScreenState extends State<DetailViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:widget.newUri,
  javascriptMode : JavaScriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController){
        }
      )
    );

  }
}

