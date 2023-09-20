# Desafio Dominando Swift - Digital Innovation One

Este repositório contém a solução para o Desafio "Dominando Swift" da Digital Innovation One, apresentando duas implementações diferentes do mesmo problema. As implementações destacam os conceitos fundamentais da linguagem Swift com programação orientada a objetos e programação orientada a protocolos.

## Códigos Implementados

### Código 1: Orientação a Objetos (OOP)

No primeiro código, seguimos uma abordagem tradicional de Orientação a Objetos (OOP) com classes e herança. Os principais conceitos abordados incluem:

- Definição de uma enumeração (`HealthStatus`) para representar o estado de saúde de um animal.
- Definição de uma estrutura (`Body`) para representar as características físicas de um animal.
- Uso de classes (`Animal`, `Flyable`, `Bird`) para criar hierarquias de herança e polimorfismo.
- Implementação de métodos (`move`, `communicate`, `sleep`) para modelar o comportamento dos animais.
- Utilização de concorrência assíncrona (`async/await`) para simular o comportamento de dormir dos animais.

### Código 2: Protocolos e Extensões

No segundo código, adotamos uma abordagem mais protocolar e extensiva para representar os animais. Os principais conceitos abordados incluem:

- Uso de protocolos (`Animal`) para definir um conjunto de requisitos que as estruturas devem cumprir.
- Implementação de uma extensão para fornecer implementações padrão dos métodos (`move`, `communicate`, `sleep`) para todas as estruturas que conformam ao protocolo `Animal`.
- Definição de estruturas (`FlyableAnimal`, `Bird`) que conformam ao protocolo `Animal`, fornecendo suas próprias implementações específicas.
- Uso de concorrência assíncrona (`async/await`) para simular o comportamento de dormir dos animais.
