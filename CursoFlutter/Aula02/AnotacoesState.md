## Stateless vs Stateful

No Flutter, os widgets podem ser classificados em **StatelessWidget** e **StatefulWidget**.  
A principal diferença entre eles é **se o widget possui ou não estado interno**.

---

## StatelessWidget

Um `StatelessWidget` é um widget **sem estado interno mutável**.  
Isso significa que ele **não controla dados que mudam ao longo do tempo**.

### Características
- Não possui estado interno
- Depende apenas dos **parâmetros de entrada**
- A interface só é reconstruída se esses parâmetros mudarem
- Mais simples e leve

### Funcionamento
- Recebe dados (parâmetros)
- Constrói a interface
- Renderiza a UI
- Se os parâmetros mudarem externamente, o widget é reconstruído

### Exemplos de uso
- Textos (`Text`)
- Ícones (`Icon`)
- Botões simples
- Layouts (`Row`, `Column`, `Container`)
- Widgets que apenas exibem informações

---

## StatefulWidget

Um `StatefulWidget` é um widget que **possui estado interno**.  
Esse estado pode mudar durante a execução da aplicação.

### Características
- Possui estado interno mutável
- Usa a classe `State`
- A interface é reconstruída quando o estado muda
- Controla dados que afetam a UI

### Funcionamento
- Recebe dados (parâmetros)
- Mantém um **estado interno**
- Renderiza a UI
- Quando o estado muda, `setState()` é chamado
- O Flutter reconstrói a interface automaticamente

### Exemplos de uso
- Campos de texto (`TextField`)
- Checkboxes e switches
- Contadores
- Exibição de loading (spinner)
- Seleção de itens

---

## Diferença principal (resumo)

- **StatelessWidget**:  
  A UI depende apenas dos dados recebidos de fora.

- **StatefulWidget**:  
  A UI depende dos dados recebidos **e do estado interno**.

---

## Regra prática
- Se algo **não muda** → `StatelessWidget`
- Se algo **muda na tela** → `StatefulWidget`

---

## Exemplo rápido

### StatelessWidget
```dart
class MeuTexto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Olá');
  }
}
