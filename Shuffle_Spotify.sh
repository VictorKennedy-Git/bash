#!/bin/bash

: '
**Desafio: Implementação do Shuffle do Spotify em Shell Script**

    Enunciado:

    Você foi desafiado a implementar uma função que simula a operação de "shuffle" (embaralhamento) de uma lista de músicas, similar ao funcionamento do Spotify. A tarefa é criar um script em Shell que embaralhe um array de elementos de maneira aleatória. O array pode representar uma lista de faixas musicais ou qualquer outro tipo de dados.

    **Requisitos:**

    1. O script deverá aceitar como entrada um array de elementos. 
    2. O script deverá embaralhar o array de forma aleatória.
    3. O embaralhamento deve ser feito de tal maneira, com a probabilidade igual para todas as permutações MENOS PARA A SEQUENCIAL.
    4. O script deverá imprimir o array embaralhado na tela.

    **Instruções:**

    - Use funções de manipulação de arrays e números aleatórios disponíveis no Shell para resolver o problema.
    - A entrada será uma lista de strings (por exemplo, nomes de faixas musicais). 
    - O script deve usar um método eficiente de aleatorização (como o algoritmo de Fisher-Yates, se possível).

    **Exemplo de entrada e saída:**

    Entrada:
    ```
    música1 música2 música3 música4 música5
    ```

    Saída (exemplo, a ordem pode variar):
    ```
    música4 música1 música3 música5 música2
    ```

    **Dicas:**

    - Considere o uso de `$RANDOM` para gerar números aleatórios no Shell.
    - O algoritmo de Fisher-Yates pode ser uma boa solução para embaralhar o array.
'
