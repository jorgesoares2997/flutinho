import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      home: const MyHomePage(title: 'lista de contatos '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
  final foto = const CircleAvatar(
    backgroundImage: NetworkImage(
        'https://instagram.frec31-1.fna.fbcdn.net/v/t51.2885-19/283863711_1466681633774766_4377525692787514126_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.frec31-1.fna.fbcdn.net&_nc_cat=106&_nc_ohc=dOywaF3haYQAX_QPAUS&edm=ABmJApABAAAA&ccb=7-5&oh=00_AfAVfamS816qOwSYOPsRhT079EMi6hbRcGYGB0RQVWVHdQ&oe=63E5B243&_nc_sid=6136e7'),
    radius: 150,
  );
  final nome = const Text(
    'Jorge Soares',
    style: TextStyle(fontSize: 30),
    textAlign: TextAlign.center,
  );
  final botaoTelefone = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.phone),
    onPressed: () {
      launchUrl(Uri(scheme: 'tel', path: '(81) 9 8759-4291'));
    },
  );
  final botaoEmail = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.email),
    onPressed: () {
      launchUrl(Uri(scheme: 'mailto', path: 'jorgesoares2997@gmail.com'));
    },
  );
  final botaoSms = IconButton(
    color: Colors.blue,
    icon: const Icon(Icons.sms),
    onPressed: () {
      launchUrl(Uri(scheme: 'sms', path: '(81)98759-4291'));
    },
  );

  Widget build(BuildContext contexto) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        foto,
        nome,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [botaoTelefone, botaoEmail, botaoSms],
        )
      ],
    ));
  }
}
