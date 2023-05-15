import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class Day5 extends StatefulWidget {
  const Day5({super.key});

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  // late final WebViewController _controller;

  // @override
  // void initState() {
  //   super.initState();

  //   _controller = WebViewController()
  //     ..setJavaScriptMode(JavaScriptMode.unrestricted)
  //     ..setBackgroundColor(const Color(0x00000000))
  //     ..setNavigationDelegate(
  //       NavigationDelegate(
  //         onProgress: (int progress) {
  //           // Update loading bar.
  //         },
  //         onPageStarted: (String url) {},
  //         onPageFinished: (String url) {},
  //         onWebResourceError: (WebResourceError error) {},
  //         onNavigationRequest: (NavigationRequest request) {
  //           if (request.url.startsWith('https://www.youtube.com/')) {
  //             return NavigationDecision.prevent;
  //           }
  //           return NavigationDecision.navigate;
  //         },
  //       ),
  //     )
  //     ..loadRequest(Uri.parse('https://flutter.dev'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // body: WebViewWidget(controller: _controller),
        // // appBar: AppBar(
        // //   toolbarHeight: 60,
        // //   title: Text('Adnan Website'),
        // // ),
        // bottomNavigationBar: Container(
        //   color: Theme.of(context).primaryColor,
        //   child: Padding(
        //     padding: const EdgeInsets.only(bottom: 20.0, right: 20),
        //     child: ButtonBar(children: [
        //       navigationButton(Icons.chevron_left, () => {}),
        //       navigationButton(Icons.chevron_right, () => {})
        //     ]),
        //   ),
        // ),
        );
  }

  Widget navigationButton(IconData icon, Function() onPressed) {
    return IconButton(onPressed: onPressed, icon: Icon(icon));
  }
}
