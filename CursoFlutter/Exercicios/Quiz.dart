import 'package:flutter/material.dart';

// Criação de Árvore de Widgets

void main() {
  runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    setState(() {
      if (perguntaSelecionada < 1) {
        perguntaSelecionada++;
      }
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wallpaper.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                perguntas[perguntaSelecionada],
                style: const TextStyle(fontSize: 24, color: Colors.white),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: responder,
                child: const Text('Resposta 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() {
    return PerguntaAppState();
  }
}
