import 'package:flutter/material.dart';


// OpenWeather API Key = " d85c3f5894dd01de3ea4d4a81f3a73b0 "

/*void main() {
  runApp(const MyApp());
}*/

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BoogieWeather',
      home: LoadingScreen(),
    );
  }
}*/

// class SomeWidget extends StatelessWidget {
//   const SomeWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // return Scaffold(
//     //   backgroundColor: const Color(0xffffff),
//     //   appBar: AppBar(
//     //     elevation: 4,
//     //     centerTitle: true,
//     //     automaticallyImplyLeading: false,
//     //     leading: IconButton(
//     //       icon: const Icon(Icons.menu),
//     //       onPressed: (){
//     //         //
//     //       },
//     //     ),
//     //   ),
//     //   floatingActionButton: FloatingActionButton(
//     //     shape: RoundedRectangleBorder(
//     //       borderRadius: BorderRadius.circular(30.0)
//     //     ),
//     //     backgroundColor: Colors.lightBlue,
//     //     onPressed: (){
//     //       //onPressed Actions
//     //     },
//     //     child: Icon(Icons.add, color: Colors.white),
//     //   ),
//     //   floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
//     //   body: Container(
//     //     clipBehavior: Clip.antiAlias,
//     //     decoration: const BoxDecoration(
//     //       gradient: LinearGradient(
//     //         begin: Alignment(0.0,-1.0),
//     //         end: Alignment(0,1),
//     //         colors: [Color(0xff73d5ff), Color(0xffbed5de)]
//     //       )
//     //     ),
//     //     padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
//     //     child: Stack(
//     //       children: <Widget>[
//     //         // Container(
//     //         //   decoration: BoxDecoration(
//     //         //     borderRadius: BorderRadius.circular(30.0),
//     //         //     color: Colors.white.withOpacity(0.5)
//     //         //   ),
//     //         //   alignment: Alignment.centerLeft,
//     //         //   height: 60, width: 350,
//     //         //   padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
//     //         //   child: Text("위치 검색...",
//     //         //   style: TextStyle(
//     //         //     fontSize: 20,
//     //         //     color: Colors.black.withOpacity(0.3)
//     //         //   ),),
//     //         // ),
//     //         const Padding(padding: EdgeInsets.fromLTRB(0, 0, 200, 500),
//     //           child: Text(
//     //             "위치별 날씨 보기",
//     //             style: TextStyle(
//     //               fontSize: 16,
//     //               color: Colors.black54,
//     //             ),
//     //           ),
//     //         ),
//     //         const SizedBox(height: 40),
//     //         // OutlinedButton.icon(label: Text(""),
//     //         //   icon: Icon(Icons.ac_unit),
//     //         //   onPressed:(){
//     //         //     //
//     //         //   },
//     //         // ),
//     //         ListView(
//     //           padding: const EdgeInsets.symmetric(vertical: 100, horizontal: 0),
//     //           scrollDirection: Axis.vertical,
//     //             children: [
//     //               Column(
//     //                 children: [
//     //                   InkWell(
//     //                     onTap: (){
//     //                       print("show weather");
//     //                     },
//     //                     splashColor: Colors.indigoAccent,
//     //                     child: Container(
//     //                       height: 130, width: 330,
//     //                       decoration: BoxDecoration(
//     //                           borderRadius: BorderRadius.circular(20.0),
//     //                           color: Colors.white.withOpacity(0.5)
//     //                       ),
//     //                       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     //                       child: const Column(
//     //                         children: [
//     //                           SizedBox(
//     //                             child: Text(
//     //                               "Forecast data here",
//     //                               style: TextStyle(
//     //                                 fontSize: 24,
//     //                                 color: Colors.black87,
//     //                               ),
//     //                             ),
//     //                           )
//     //                         ],
//     //                       ),
//     //                     ),
//     //                   ),
//     //                   const SizedBox(height: 20),
//     //                   Container(
//     //                     height: 130, width: 330,
//     //                     decoration: BoxDecoration(
//     //                         borderRadius: BorderRadius.circular(20.0),
//     //                         color: Colors.white.withOpacity(0.5)
//     //                     ),
//     //                     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     //                     child: const Column(
//     //                       children: [
//     //                         SizedBox(
//     //                           child: Text(
//     //                             "Forecast data here",
//     //                             style: TextStyle(
//     //                               fontSize: 24,
//     //                               color: Colors.black87,
//     //                             ),
//     //                           ),
//     //                         )
//     //                       ],
//     //                     ),
//     //                   ),
//     //                   const SizedBox(height: 20),
//     //                   Container(
//     //                     height: 130, width: 330,
//     //                     decoration: BoxDecoration(
//     //                         borderRadius: BorderRadius.circular(20.0),
//     //                         color: Colors.white.withOpacity(0.5)
//     //                     ),
//     //                     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     //                     child: const Column(
//     //                       children: [
//     //                         SizedBox(
//     //                           child: Text(
//     //                             "Forecast data here",
//     //                             style: TextStyle(
//     //                               fontSize: 24,
//     //                               color: Colors.black87,
//     //                             ),
//     //                           ),
//     //                         )
//     //                       ],
//     //                     ),
//     //                   ),
//     //                   const SizedBox(height: 20),
//     //                   Container(
//     //                     height: 130, width: 330,
//     //                     decoration: BoxDecoration(
//     //                         borderRadius: BorderRadius.circular(20.0),
//     //                         color: Colors.white.withOpacity(0.5)
//     //                     ),
//     //                     padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
//     //                     child: const Column(
//     //                       children: [
//     //                         SizedBox(
//     //                           child: Text(
//     //                             "Forecast data here",
//     //                             style: TextStyle(
//     //                               fontSize: 24,
//     //                               color: Colors.black87,
//     //                             ),
//     //                           ),
//     //                         )
//     //                       ],
//     //                     ),
//     //                   ),
//     //                 ],
//     //               ),
//     //             ],
//     //         ),
//     //       ],
//     //     ),
//     //   )
//     // );
//   }
// }

