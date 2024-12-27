#!/bin/bash 

: '
Sorteador de Números Aleatórios
    Crie um script em Bash que funcione como um sorteador de números. O script deve:

    - Solicitar ao usuário dois números, um mínimo e um máximo, que definem o intervalo do sorteio.
    - Solicitar ao usuário a quantidade de números que ele deseja sortear.
    - Verificar se o intervalo e a quantidade de números são válidos (o número máximo deve ser maior que o mínimo, e a quantidade deve ser menor ou igual ao intervalo possível).
    - Sortear os números sem repetições, exibindo o resultado final ao usuário.
    
    Extra (opcional):
    * Permitir que o usuário escolha se quer repetir o sorteio com os mesmos parâmetros.
    * Salvar os resultados do sorteio em um arquivo de log com data e hora.
'
: '
echo "INCIANDO SORTEIO!!"
echo "Informe um número MÍNIMO para sorteio:"
read n1
echo "Informe um número MÁXIMO para sorteio:"
read n2

if [[ $n2 -le $n1 ]]; then
    echo "ERRO: Número MÁXIMO menor ou igual número mínimo"\
    
    echo "Informe um número MÍNIMO para sorteio:"
    read n1

    echo "Informe um número MÁXIMO para sorteio:"
    read n2
fi

echo "Qual a quantidade de números que você quer sortear entre $n1 e $n2"
read count
'
n1=$1
n2=$2
count=$3
if [[ $n2 -gt $count ]]; then
    
    for (( i=0; i < $count; i++));
    do    
        sort=$(( $RANDOM % $n2 ))
        array[$i]=$sort   

        texto=${array[*]}

        while [[ $(echo $texto | grep " $sort ") ]] || [[ $sort -le $n1 ]];
        do
            sort_b=$(( $RANDOM % $n2 ))
            array[$i]=$sort_b
        done
            
        echo "$(expr $i + 1)° Número é: ${array[$i]}"
    done
fi

#SOLUÇÃO BURRA QUE NÃO RESOLVE O PROBLEMA
: '
    if [[ $n2 -gt $count ]]; then
        sort=$(( $RANDOM % $n2 ))
        for (( i=0; i < $count; i++ )) ;
        do
            array[$i]=$sort
            
            while [[ ${array[$i]} -eq $sort ]]
            do
                sort=$(( $RANDOM % $n2 ))
            done
        done

        echo ${array[*]}
    fi'