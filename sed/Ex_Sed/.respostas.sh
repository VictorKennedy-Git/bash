#!/bin/bash

# 1. Substituição Simples
# Substitua a palavra "mundo" por "universo" em um texto.
# Exemplo:
# texto="O mundo é vasto e fascinante"
# echo $texto | sed 's/mundo/universo/'

# 2. Substituição Global
# Substitua todas as ocorrências da palavra "Linux" por "Ubuntu" em um texto.
# Exemplo:
# texto="Linux é um sistema, o Linux é muito bom!"
# echo $texto | sed 's/Linux/Ubuntu/g'

# 3. Substituição Condicional
# Substitua a palavra "linux" por "windows" apenas nas linhas que contêm "curso".
# Exemplo:
# for i in "Estudar linux" "Curso Linux" "Estudar windows"; do
#     echo $i
# done | sed '/curso/s/linux/windows/'

# 4. Remover Linhas Específicas
# Remova a linha que contém a palavra "windows" de um texto.
# Exemplo:
# texto="Estudar linux é incrível\nEstudar Windows é incrível"
# echo -e $texto | sed '/windows/d'

# 5. Remover Linhas Vazias
# Remova todas as linhas vazias de um texto.
# Exemplo:
# texto="Estudar linux é incrível\n\nEstudar windows é incrível"
# echo -e $texto | sed '/^$/d'

# 6. Substituição com Referência a Grupos
# Inverter a ordem de "nome sobrenome" para "sobrenome, nome".
# Exemplo:
# echo "João Silva" | sed 's/\([a-zA-Z]*\) \([a-zA-Z]*\)/\2, \1/'

# 7. Adicionar Texto Após Padrão
# Adicionar a linha "DocumentRoot /var/www/html" após a linha que contém "Port 80" em uma configuração de servidor.
# Exemplo:
# echo -e "Port 80\nServerName example.com" | sed '/Port 80/a\DocumentRoot /var/www/html'

# 8. Filtros com Intervalo de Linhas
# Exiba apenas as linhas 2 a 4 de um texto.
# Exemplo:
# texto="Estudar linux é incrível\nEstudar windows é incrível\nLinux é poderoso\nUbuntu é Linux"
# echo -e $texto | sed -n '2,4p'

# 9. Substituição com Expressões Regulares Avançadas
# Formatar datas de "dd/mm/yyyy" para "yyyy/mm/dd".
# Exemplo:
# echo "22:08:2023 8|10|2023 26-02-2023" | sed -E 's/([0-9]+)[-|.:|]/\2\/\1\/\3/g'

# 10. Manipulação de Arquivo de Configuração
# Substitua a configuração de "Port 80" por "Port 443" e insira "ServerName example.org" após a linha "Port 443".
# Exemplo:
# echo -e "Port 80\nServerName example.com" | sed -e 's/Port 80/Port 443/' -e '/Port 443/a\ServerName example.org'

# 11. Substituir Delimitadores em Dados
# Substitua os delimitadores de data ("/", "|", "-") por uma barra "/" em diferentes formatos de data.
# Exemplo:
# echo "22:08:2023 8|10|2023 26-02-2023" | sed -E 's/([0-9]+)[-|.:|]/\2\/\1\/\3/g'

# 12. Substituir Todos os Tipos de Ponto e Vírgula por Espaços
# Substitua pontos e vírgulas por espaços.
# Exemplo:
# echo "João; Paulo. Maria" | sed 's/[.;]/ /g'

# 13. Adicionar Texto no Início da Linha
# Adicione a palavra "INICIO" ao início de cada linha que começa com "Estudar".
# Exemplo:
# echo -e "Estudar linux\nEstudar windows" | sed '/^Estudar/ s/^/INICIO /'

# 14. Substituir Cifras Monetárias
# Converta valores monetários de "R$ 10,00" para "10,00 BRL".
# Exemplo:
# echo "R$ 10,00" | sed 's/R\$ / /; s/,/./; s/$/ BRL/'

# 15. Remover Caracteres Especiais
# Remover todos os caracteres não alfanuméricos de uma string.
# Exemplo:
# echo "Texto! com@ caracteres #especiais" | sed 's/[^a-zA-Z0-9 ]//g'

# 16. Substituir Palavras com Limitação de Caracteres
# Substitua a palavra "linux" por "windows" apenas se for precedida por "Estudar".
# Exemplo:
# echo "Estudar linux é ótimo, Estudar windows é bom!" | sed 's/Estudar linux/Estudar windows/'

# 17. Contar Ocorrências
# Conte o número de ocorrências da palavra "linux" em um texto.
# Exemplo:
# echo "Linux é poderoso, Linux é livre, Linux é ótimo!" | sed -n 's/linux/&/gp' | wc -l

# 18. Reverter Ordem de Palavras
# Reverter a ordem das palavras em uma linha.
# Exemplo:
# echo "linux estudar é" | sed 's/\(.*\)/\1/' 

# 19. Uso de Múltiplos Comandos
# Aplica múltiplas substituições e filtros no mesmo comando.
# Exemplo:
# echo -e "Estudar Linux\nEstudar Windows" | sed -e 's/Linux/Ubuntu/' -e 's/Windows/XP/' -e '/XP/d'
