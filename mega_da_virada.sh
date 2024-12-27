#!/bin/bash

: 'Mega da Virada em Bash:
    ### Desafio: Sorteador de Números da Mega da Virada (Bash)

    **Objetivo:**  
    Crie um script em Bash que sorteie seis números diferentes para a Mega da Virada, entre 1 e 60 (inclusive). O script deve garantir que não haja números repetidos no sorteio e apresentar os números sorteados de forma ordenada.

    **Requisitos:**
    1. O script deve gerar seis números aleatórios distintos entre 1 e 60.
    2. O script deve garantir que os números sorteados não se repitam.
    3. O script deve exibir os números sorteados em ordem crescente.
    4. O script deve exibir uma mensagem indicando que os números sorteados foram para a Mega da Virada, por exemplo:  
    `Sorteio da Mega da Virada: 5, 12, 20, 34, 42, 58`

    **Exemplo de execução do script:**
    ```
    $ ./sorteio_mega.sh
    Sorteio da Mega da Virada: 3, 15, 27, 34, 47, 55
    ```
'

for ((i=0; i<=5; i++)); 
do
    sort=$(( $RANDOM % 61 ))    
    lista[$i]=$sort
    
    texto=${lista[*]}
    
    while [[ $(echo $texto | grep " $sort ") ]] || [[ $sort -lt 1 ]];
    do
        sort=$(( $RANDOM % 61 ))    
        lista[$i]=$sort
    done

    resultado=${lista[*]}
done

    echo $resultado
