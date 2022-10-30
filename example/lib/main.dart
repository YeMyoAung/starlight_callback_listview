import 'package:flutter/material.dart';
import 'package:starlight_callback_listview/starlight_callback_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 10;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: gridviewCustom(),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  StarlightCallbackGridView gridviewCustom() {
    return StarlightCallbackGridView.custom(
        invokeWhen: invokeWhen,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildBuilderDelegate(
          (_, index) {
            return Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(index.toString()),
            );
          },
          childCount: 10,
        ));
  }

  StarlightCallbackGridView gridviewExtent() {
    return StarlightCallbackGridView.extent(
        invokeWhen: invokeWhen,
        maxCrossAxisExtent: 2,
        children: [
          for (int index = 0; index < 10; index++)
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(index.toString()),
            )
        ]);
  }

  StarlightCallbackGridView gridviewCount() {
    return StarlightCallbackGridView.count(
        invokeWhen: invokeWhen,
        crossAxisCount: 2,
        children: [
          for (int index = 0; index < 10; index++)
            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              color: Colors.green,
              alignment: Alignment.center,
              child: Text(index.toString()),
            )
        ]);
  }

  StarlightCallbackGridView gridviewbuilder() {
    return StarlightCallbackGridView.builder(
      invokeWhen: invokeWhen,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1),
      builder: (_, index) => Container(
        width: double.infinity,
        height: 100,
        margin: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.green,
        alignment: Alignment.center,
        child: Text(index.toString()),
      ),
      count: 2,
    );
  }

  StarlightCallbackListView listview() =>
      StarlightCallbackListView(invokeWhen: invokeWhen, children: [
        for (int index = 0; index < 10; index++)
          Container(
            width: double.infinity,
            height: 100,
            margin: const EdgeInsets.symmetric(vertical: 10),
            color: Colors.green,
            alignment: Alignment.center,
            child: Text(index.toString()),
          )
      ]);

  StarlightCallbackListView listviewbuilder() {
    return StarlightCallbackListView.builder(
      invokeWhen: invokeWhen,
      count: _counter,
      builder: (context, index) {
        return Container(
          width: double.infinity,
          height: 100,
          margin: const EdgeInsets.symmetric(vertical: 10),
          color: Colors.green,
          alignment: Alignment.center,
          child: Text(index.toString()),
        );
      },
    );
  }

  void invokeWhen(double percent) {
    if (_isLoading) return;
    if (percent > 80) {
      _isLoading = true;
      Future.delayed(const Duration(seconds: 3), () {
        setState(() {
          _counter += 10;
          _isLoading = false;
        });
      });
    }
  }
}
