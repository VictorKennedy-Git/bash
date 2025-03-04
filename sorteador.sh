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

sort=$(shuf -i $n1-$n2 -n $count)

array=($sort)

for (( i=1; i<=$count; i++ ));
do
    echo "$i° número é: ${array[$i - 1]}"
done


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