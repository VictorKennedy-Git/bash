#!/bin/bash

#EXEMPLO DE SUBSTITUIÇÃO
: '
texto="Hi, I am a Monitoring Network Analist, and, I pratice my english"

echo $texto | sed 's/Monitoring Network/Quality/g'
'


#SUBSTITUIÇÃO EM LINHA ESPECÍFICA
: 'for ((i=0; i<4; i++)); do
    echo "Estudar linux é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
done | sed '2s/linux/windows/'' 

#REMOÇÃO DE LINHA COM CORRESPONDÊNCIA
: 'for ((i=0; i<4; i++)); do
    echo "Estudar linux é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
    echo "Estudar Windows é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
done | sed '/Windows/d''

#REMOÇÃO DE LINHAS BRANCAS sed '/^$/d
: 'for ((i=0; i<4; i++)); do
    echo "Estudar linux é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
    echo ""
    echo "Estudar Windows é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
done | sed '/^$/d''


#Realização de filtro por linha '/^$/d
: 'for ((i=0; i<4; i++)); do
    echo "Estudar linux é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
    echo ""
    echo "Estudar Windows é incrível, explorar um mundo cheio de possibilidades, com os cursos da 4Linux esse percurso se torna incrível!"
done | sed -n '2,3p''

#Realizando Substituição inserção de texto
: 'config1="Port 80"
config2="Server Name example.com"

echo -e "$config1\n$config2" | sed '/Server/a\DocumentRoot/var/www/html''

#Expressões duplas e com quebra de linha

data=("22:08:2023" "8|10|2023" "26-02-2023" "23.4.2023")

echo -e ${data[@]} | sed -E 's/ /\n/g; s/([0-9]+)[-|.:]([0-9]+)[-|.:]([0-9]+)/\2\/\1\/\3/g'