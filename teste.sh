#!/bin/bash
tempofuncao(){
    zenity_input_tempo(){
        valor=$(zenity --forms --add-entry="Valor tempo" --add-combo="Tipo" --combo-values="Horas|Minutos|Segundos")
        data=($(echo $valor | tr "|" " "))
    }

    zenity_input_tempo
    case $? in
        0)
            while [[ -n $(echo $valor | tr "|" "\n" | head -n 2 ) || \
            -n $(echo $valor | tr "|" "\n" | head -n 1 ) || \
            -n $(echo $valor | tr "|" "\n" | tail -n 1 ) ]];
            do
                
                valor=$(zenity --forms --text="Por favor preencha os campos" --add-entry="Valor tempo" --add-combo="Tipo" --combo-values="Horas|Minutos|Segundos")
                    
                    case $? in
                        0)
                            echo "AA"
                        ;;
                        1)
                            zenity --info --text="Ação Cancelada"
                        ;;
                        -1)
                            zenity --info --text="Erro inesperado"
                        ;;
                    esac
            done
        ;;
        1)
            zenity --info --text="Ação Cancelada"
        ;;
        -1)
            zenity --info --text="Erro inesperado"
        ;;
    esac
    
}

tempofuncao
#validaçao se for vazio e diferente de numero
