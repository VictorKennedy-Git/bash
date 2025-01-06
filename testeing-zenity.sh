#!/bin/bash

#zenity --list --title="Escolha uma Opção" --column="Opções" "Opção 1" "Opção 2" "Opção 3"
#zenity --info --title="Informação" --text="Este é um exemplo de caixa de mensagem informativa!"
#zenity --warning --title="Aviso" --text="Cuidado! O sistema está quase sem espaço."
#zenity --error --title="Erro" --text="Erro! O comando falhou."

#SELECT DE MAIS DE UMA OPÇAO COM ZENIRY

pegartempo(){
    form_tempo(){
        tempo_teste=($(zenity --list --text="Tempo Para Teste" --radiolist --column="SELECIONAR"  --column="OPÇÕES" \
        TRUE "60 Seg"\
        FALSE "5 Min"\
        FALSE "15 Min" \
        FALSE "30 Min" \
        FALSE "1 Hr" \
        FALSE "2 Hr" \
        FALSE "4 Hr" \
        FALSE "8 Hr" \
        FALSE "16 Hr" \
        FALSE "24 Hr"\
        FALSE "OUTRO"\
        --height="370"\
        --width="250"
        )
        )
    }
    case $? in
    0)
        case $tempo_teste in
        5|15|30)
            timeout=$(expr "$tempo_teste" \* 60)
        ;;
        1|2|3|4|8|24)
            timeout=$(expr "$tempo_teste" \* 60 \* 60)
        ;;
        OUTRO)
            $(zenity --error --text="NÃO PROGRAMADO AINDA")
            exit 1
        ;;
        esac
    ;;
    1)
        $(zenity --error --text="OPERAÇÃO CANCELADA")
        exit 1
    ;;
    
    -1)
        $(zenity --error --text="ERRO INESPERADO")
        exit 1
    ;;
    esac
}


form_domios(){
    dominios=$(zenity --list \
            --title="Escolha os Domínios"\
            --text="Selecione uma ou mais opções:"\
            --checklist\
            --height="480"\
            --width="300"\
            --column="Selecionado"\
            --column="Domínios"\
                TRUE "youtube.com" \
                TRUE "facebook.com" \
                TRUE "google.com" \
                FALSE "_gateway" \
                FALSE "177.37.220.17" \
                FALSE "177.37.220.18" \
                FALSE "twitter.com" \
                FALSE "instagram.com" \
                FALSE "linkedin.com" \
                FALSE "wikipedia.org" \
                FALSE "amazon.com" \
                FALSE "yahoo.com" \
                FALSE "reddit.com" \
                FALSE "github.com" \
                FALSE "bing.com" \
                FALSE "microsoft.com")
    }
    case $? in
    0)
        $(zenity --question --text="Confirmação dos Testes:\n $(echo $dominios | tr "|" "\n")")
    ;;
    1)
        $(zenity --error --text="OPERAÇÃO CANCELADA")
        exit 1
    ;;
    
    -1)
        $(zenity --error --text="ERRO INESPERADO")
        exit 1
    ;;
    esac
}
pegartempo
pegardomios   



: '
dominios=$(zenity --list \
        --title="Escolha os Domínios"\
        --text="Selecione uma ou mais opções:"\
        --checklist\
        --column="Selecionado"\
        --column="Opções"\
        TRUE "youtube.com" TRUE "facebook.com" TRUE "google.com")
        
echo $dominios | tr "|" "\n"
'
: '
data=$(zenity --forms --title="Ping IPv4 e IPv6 Testes"\
    --text="Entre com as informções necessárias"\
    --add-combo="Selecionar Dominios"\
    --combo-values="Selecionar Manualmente|youtube.com,facebook.com,instagram.com,google.com_gateway|google.com,_gateway,dns1,dns2"\
    --add-combo="Selecionar Tempo - Se Vazio Testa Por 60 Segundos"\
    --combo-values="5minutos|10minutos|30minutos|1Hora|2horas|3horas|5horas|24horas"\
    --show-header\
    --separator="|"
) 
'

: '
case $? in 
    0)
        if [ -z $data];then


        elif [[ $(echo $data | tr "|" "\n" | head -n 1) = 'Selecionar Manualmente' ]]; then
            dominios=$(zenity --list \
            --title="Escolha os Domínios"\
            --text="Selecione uma ou mais opções:"\
            --checklist\
            --height="480"\
            --width="300"\
            --column="Selecionado"\
            --column="Domínios"\
                TRUE "youtube.com" \
                TRUE "facebook.com" \
                TRUE "google.com" \
                FALSE "_gateway" \
                FALSE "177.37.220.17" \
                FALSE "177.37.220.18" \
                FALSE "twitter.com" \
                FALSE "instagram.com" \
                FALSE "linkedin.com" \
                FALSE "wikipedia.org" \
                FALSE "amazon.com" \
                FALSE "yahoo.com" \
                FALSE "reddit.com" \
                FALSE "github.com" \
                FALSE "bing.com" \
                FALSE "microsoft.com")
        elif [[]]; then
        fi 
    ;;
    1)
        $(zenity --info --text="Cancelado Operação")
    ;;
    -1)
        $(zenity --error --text="Erro inesperado")
    ;;
esac
'
