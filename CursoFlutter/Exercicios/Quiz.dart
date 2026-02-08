import 'package:flutter/material.dart';

// Criação de Árvore de Widgets

void main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> { // Método privado
  var perguntaSelecionada = 0;

  void _responder() {
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
                onPressed: _responder,
                child: const Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: _responder,
                child: const Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: _responder,
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
  State<_PerguntaApp> createState() {
    return _PerguntaAppState();
  }
}
