# Entendendo Estado

## O que é Estado
Estado representa os **dados ou informações que podem mudar ao longo do tempo** dentro de uma aplicação.  
Sempre que o estado muda, a interface pode precisar ser atualizada para refletir essa mudança.

---

## Estado da Aplicação
É o estado que afeta **toda a aplicação** ou grandes partes dela, não apenas um widget específico.

### Exemplos
- Usuário autenticado ou não autenticado
- Lista de produtos carregada a partir de uma API
- Tema da aplicação (claro ou escuro)
- Idioma selecionado

Esse tipo de estado geralmente é compartilhado entre várias telas.

---

## Estado do Widget
É o estado que pertence a **um widget específico** e afeta apenas sua interface.

### Exemplos
- Texto digitado em um campo de entrada (`TextField`)
- Exibição de um indicador de carregamento (spinner) durante uma requisição
- Botão habilitado ou desabilitado
- Item selecionado em uma lista

Esse estado normalmente é controlado por um `StatefulWidget` usando `setState()`.

---

## Resumo
- **Estado**: dados que podem mudar
- **Estado da aplicação**: impacta várias telas
- **Estado do widget**: impacta apenas um componente da interface
- **Focar em componentes sem estado**
