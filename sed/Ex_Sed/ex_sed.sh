#!/bin/bash

# 1. Substituição Simples
# Enunciado: Substitua a palavra "mundo" por "universo" em um texto.
# Descrição: Crie um texto onde a palavra "mundo" aparece uma vez ou mais e aplique a substituição para trocar essa palavra por "universo".

#RESPOSTA
: ' 
1(){
    echo "O mundo é bonito"
    echo "O mundo é bonito e frio"
    echo "O mundo é bonito e grande"
}
1 | sed 's/mundo/universo/g''

# 2. Substituição Global
# Enunciado: Substitua todas as ocorrências da palavra "Linux" por "Ubuntu" em um texto.
# Descrição: Crie um texto com várias ocorrências da palavra "Linux" e substitua todas as ocorrências por "Ubuntu".

#RESPOSTA
: 'i=0
while [[ $i -lt 5 ]]; do
    echo "Linux é o melhor sistema operacional do munto"
    i=$(expr $i + 1)
done | sed "s/Linux/Ubuntu/g"
'

# 3. Substituição Condicional
# Enunciado: Substitua a palavra "linux" por "windows" apenas nas linhas que contêm "curso".
# Descrição: Crie um texto com várias linhas, algumas contendo a palavra "curso" e outras não. Apenas nas linhas que contêm "curso", substitua "linux" por "windows".

: 'i=0
while [[ $i -lt 2 ]]; do
    echo "Linux é o melhor sistema operacional do mundo em curso"
    echo "Linux é o melhor sistema operacional do mundo"
    i=$(expr $i + 1)
done | sed "/curso/s/Linux/windows/";'


# 4. Remover Linhas Específicas
# Enunciado: Remova a linha que contém a palavra "windows" de um texto.
# Descrição: Crie um texto com várias linhas, algumas contendo a palavra "windows". Remova as linhas que contêm a palavra "windows".
: 'i=0
while [[ $i -lt 2 ]]; do
    echo "Linux é o melhor sistema operacional do mundo em curso"
    echo "Windows é o melhor sistema operacional do mundo"
    i=$(expr $i + 1)
done | sed "/Windows/d"'



# 5. Remover Linhas Vazias
# Enunciado: Remova todas as linhas vazias de um texto.
# Descrição: Crie um texto com algumas linhas vazias e aplique a remoção dessas linhas, mantendo apenas as linhas com conteúdo.

: 'i=0
while [[ $i -lt 2 ]]; do
    echo "Linux é o melhor sistema operacional do mundo em curso"
    echo ""
    echo "Windows é o melhor sistema operacional do mundo"
    i=$(expr $i + 1)
done | sed "/^$/d"
'

# 6. Substituição com Referência a Grupos
# Enunciado: Inverter a ordem de "nome sobrenome" para "sobrenome, nome".
# Descrição: Crie um texto onde há nomes compostos por "nome sobrenome" e altere a ordem para "sobrenome, nome".

: '
texto="nome sobrenome"
echo $texto | sed 's/\([a-zA-Z]*\) \([a-zA-Z]*\)/\2, \1/''

# 7. Adicionar Texto Após Padrão
# Enunciado: Adicionar a linha "DocumentRoot /var/www/html" após a linha que contém "Port 80" em uma configuração de servidor.
# Descrição: Crie uma configuração fictícia de servidor onde há uma linha com "Port 80". Após essa linha, insira a linha "DocumentRoot /var/www/html".

#echo -e "DocumentRoot /var/www/html \nPorta 80" | sed "/DocumentRoot/a\Type=json"

# 8. Filtros com Intervalo de Linhas
# Enunciado: Exiba apenas as linhas 2 a 4 de um texto.
# Descrição: Crie um texto com várias linhas e use um filtro para exibir somente as linhas 2, 3 e 4.

: 'for ((i=1; i<=4; i++)); do
    echo "Texto linha $i"
done | sed -n "2, 4p"'

# 9. Substituição com Expressões Regulares Avançadas
# Enunciado: Formatar datas de "dd/mm/yyyy" para "yyyy/mm/dd".
# Descrição: Crie um texto ou uma lista de datas nos formatos "dd/mm/yyyy", "dd|mm|yyyy" ou "dd-mm-yyyy" e formate todas as datas para o formato "yyyy/mm/dd".
echo -e "dd/mm/yyyy \ndd|mm|yyyy \ndd-mm-yyyy"

# 10. Manipulação de Arquivo de Configuração
# Enunciado: Substitua a configuração de "Port 80" por "Port 443" e insira "ServerName example.org" após a linha "Port 443".
# Descrição: Crie uma configuração de servidor fictícia com a linha "Port 80". Substitua essa linha por "Port 443" e adicione "ServerName example.org" após "Port 443".

# 11. Substituir Delimitadores em Dados
# Enunciado: Substitua os delimitadores de data ("/", "|", "-") por uma barra "/" em diferentes formatos de data.
# Descrição: Crie uma lista de datas com diferentes delimitadores ("/", "|", "-") e substitua todos os delimitadores por uma barra "/" para padronizar o formato da data.

# 12. Substituir Todos os Tipos de Ponto e Vírgula por Espaços
# Enunciado: Substitua pontos e vírgulas por espaços.
# Descrição: Crie um texto onde há pontos e vírgulas, e substitua todos esses caracteres por espaços.

# 13. Adicionar Texto no Início da Linha
# Enunciado: Adicione a palavra "INICIO" ao início de cada linha que começa com "Estudar".
# Descrição: Crie um texto onde algumas linhas começam com "Estudar" e adicione a palavra "INICIO" no início dessas linhas.

# 14. Substituir Cifras Monetárias
# Enunciado: Converta valores monetários de "R$ 10,00" para "10,00 BRL".
# Descrição: Crie uma lista de valores monetários no formato "R$ 10,00" e substitua esse formato por "10,00 BRL".

# 15. Remover Caracteres Especiais
# Enunciado: Remover todos os caracteres não alfanuméricos de uma string.
# Descrição: Crie uma string com caracteres especiais, como "!", "@", "#" e outros, e remova todos esses caracteres, deixando apenas os alfanuméricos.

# 16. Substituir Palavras com Limitação de Caracteres
# Enunciado: Substitua a palavra "linux" por "windows" apenas se for precedida por "Estudar".
# Descrição: Crie um texto onde algumas linhas começam com "Estudar linux" e outras com "Estudar windows". Substitua "linux" por "windows" apenas nas linhas que começam com "Estudar".

# 17. Contar Ocorrências
# Enunciado: Conte o número de ocorrências da palavra "linux" em um texto.
# Descrição: Crie um texto com várias ocorrências da palavra "linux" e conte quantas vezes essa palavra aparece no texto.

# 18. Reverter Ordem de Palavras
# Enunciado: Reverter a ordem das palavras em uma linha.
# Descrição: Crie uma linha de texto com várias palavras e inverta a ordem dessas palavras. Por exemplo, transforme "linux estudar é" em "é estudar linux".

# 19. Uso de Múltiplos Comandos
# Enunciado: Aplica múltiplas substituições e filtros no mesmo comando.
# Descrição: Crie um texto que contenha várias palavras e aplique múltiplas substituições em um único comando. Além disso, aplique um filtro para excluir ou modificar algumas linhas.
