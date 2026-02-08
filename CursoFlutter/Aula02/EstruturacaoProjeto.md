# Estruturação de Projetos Mobile

## MVC — Model · View · Controller

### O que é

O **MVC** é um dos padrões arquiteturais mais antigos. Ele separa a aplicação em três responsabilidades principais.

### Componentes

* **Model**: dados e regras de negócio
* **View**: interface com o usuário (telas)
* **Controller**: recebe ações da View e manipula o Model

### Fluxo

```
View → Controller → Model
Model → Controller → View
```

### Vantagens

* Simples de entender
* Fácil de implementar
* Bom para projetos pequenos

### Desvantagens

* Controllers tendem a crescer demais
* Difícil de testar
* Baixa escalabilidade

### Quando usar

* Projetos pequenos
* Estudos
* Provas de conceito

---

## MMVC — Modified MVC

### O que é

O **MMVC** é uma adaptação do MVC tradicional, criada para melhorar a organização e reduzir a sobrecarga do Controller.

### Diferença principal

Parte da lógica de negócio é movida para **Services**, **Managers** ou **Helpers**.

### Componentes

* Model
* View
* Controller (mais leve)
* Service / Manager

### Fluxo

```
View → Controller → Service → Model
```

### Vantagens

* Melhor organização que MVC
* Controller menos sobrecarregado
* Mais fácil de evoluir para arquiteturas mais robustas

### Desvantagens

* Não é um padrão formal
* Pode virar bagunça sem padronização
* Ainda há dependência excessiva da View

### Quando usar

* Apps de médio porte
* Times pequenos
* Projetos em crescimento

---

## MVVM — Model · View · ViewModel

### O que é

O **MVVM** é o padrão mais utilizado atualmente em desenvolvimento mobile moderno.

### Componentes

* **Model**: dados e regras de negócio
* **View**: interface gráfica
* **ViewModel**: estado da tela, lógica e comunicação com o Model

### Fluxo

```
View ↔ ViewModel → Model
```

A View observa o estado do ViewModel e se atualiza automaticamente.

### Vantagens

* Separação clara de responsabilidades
* Alta escalabilidade
* Facilidade para testes
* Código mais organizado e profissional

### Desvantagens

* Maior quantidade de arquivos
* Curva de aprendizado maior
* Pode ser excessivo para apps simples

### Quando usar

* Aplicativos médios e grandes
* Projetos profissionais
* Startups e produtos escaláveis

---

## Comparação Geral

| Arquitetura | Organização | Escalabilidade | Testes  | Complexidade |
| ----------- | ----------- | -------------- | ------- | ------------ |
| MVC         | Baixa       | Baixa          | Difícil | Baixa        |
| MMVC        | Média       | Média          | Média   | Média        |
| MVVM        | Alta        | Alta           | Fácil   | Alta         |

---

## Conclusão

A escolha da arquitetura depende do tamanho do projeto, da experiência da equipe e dos objetivos do aplicativo. Para projetos modernos e com potencial de crescimento, **MVVM** é a abordagem mais recomendada.
