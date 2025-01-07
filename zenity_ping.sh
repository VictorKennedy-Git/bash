#!/bin/bash

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
  --width="250"))

case $? in
  0)
    case $tempo_teste in
      60)
        timeout=$tempo_teste
      ;;
      5|15|30)
        timeout=$(expr "$tempo_teste" \* 60)
      ;;
      1|2|3|4|8|24)
        timeout=$(expr "$tempo_teste" \* 60 \* 60)
      ;;
      OUTRO)
        valor=$(zenity --forms --add-entry="Valor tempo" --add-combo="Tipo" --combo-values="Horas|Minutos|Segundos")
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
 
case $? in
    0)
        case "$tempo_teste" in
            60)
                t="60 Segundos"
            ;;
            5)
                t="5 Minutos"
            ;;
            15)
                t="15 Minutos"
            ;;
            30)
                t="30 Minutos"
            ;;
            1)
                t="1 Hora"
            ;;
            2)
                t="2 Horas"
            ;;
            4) 
                t="4 Horas"
            ;;
            8)
                t="8 Horas"
            ;;
            16)
                t="16 Horas"
            ;;
            24)
                t="24 Horas"
            ;;
        esac

        $(zenity --info --text="Os dados informados foram:\n<b>Domínios:</b>\n$(echo "$dominios" | tr "|" "\n")\n\n<b>Tempo</b>\n$t")
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