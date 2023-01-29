// import 'dart:io';



// class DefaultWebView extends StatefulWidget {
//   const DefaultWebView({Key? key}) : super(key: key);

//   @override
//   DefaultWebViewState createState() => DefaultWebViewState();
// }

// class DefaultWebViewState extends BaseState<DefaultWebView> {
//   late final String? title;
//   var data;

//   @override
//   void initState() {
//     isShowDataFromArguments = false;
//     data = Get.arguments;

//     if (Get.arguments != null) {
//       data = Get.arguments[0];
//       title = Get.arguments[1];
//     }

//     //EasyLoading.show(status: "Please wait...");
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: myAppBar(title: title.toString()),
//       body: WebView(
//         initialUrl: data,
//         javascriptMode: JavascriptMode.unrestricted,
//         onPageStarted: (progress) {
//           EasyLoading.dismiss();
//         },
//       ),
//     );
//   }
// }
