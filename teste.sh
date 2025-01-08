#!/bin/bash
tempofuncao(){
    valor=$(zenity --forms --add-entry="Valor tempo" --add-combo="Tipo" --combo-values="Horas|Minutos|Segundos")    
    case $? in
        0)
            data=($(echo $valor | tr "|" " "))
            if [[ ! ${data[0]} =~ ^[0-9]+$ ]]; then
                repeat=$(zenity --question --icon-name=dialog-error --text="Informações incorretas\n<b>\nDeseja continuar?</b>")
                    case $? in
                        0)
                            data=()
                            tempofuncao
                        ;;
                        1)
                            zenity --info --text="Cancelado Execução"
                            sleep 4
                            exit 1
                        ;;
                        -1)
                            zenity --info --text="Erro inesperado"
                        ;;
                    esac
                exit 1
            fi
        ;;
        1)
            zenity --info --text="Cancelado"
            exit 1
        ;;
        -1)
            validador="Erro"
        ;;
    esac    
    if [[ $validador -eq 0 ]] && [[ ${#data[@]} -eq 2 ]]; then  
        zenity --info --text="Preenchido Corretamente"
    elif [[ $valioador -eq 1 ]]; then
        zenity --info --text="Cancelado Execução"
    else
        while [[ ${#data[@]} -lt 2 ]]; do
             
             valor=$(zenity --forms --text="Por favor preencha os campos" --add-entry="Valor tempo" --add-combo="Tipo" --combo-values="Horas|Minutos|Segundos")
        
            case $? in
                0)
                    data=($(echo $valor | tr "|" " "))
                    if [[ ! ${data[0]} =~ ^[0-9]+$ ]]; then
                        repeat=$(zenity --question --icon-name=dialog-error --text="Informações incorretas\n<b>\nDeseja continuar?</b>")
                            case $? in
                                0)
                                    data=()
                                    tempofuncao
                                ;;
                                1)
                                    zenity --info --text="Cancelado Execução"
                                    sleep 4
                                    exit 1
                                ;;
                                -1)
                                    zenity --info --text="Erro inesperado"
                                ;;
                            esac
                        exit 1
                    fi
                ;;
                1)
                    zenity --info --text="Cancelado"
                    exit 1
                ;;
                -1)
                    zenity --info --text="Erro inesperado"
                ;;
            esac
        done
    fi    
}

tempofuncao

case ${data[1]} in
    "Horas")
        timeout=$(expr ${data[0]} \* 60 \* 60)
        echo $timeout
    ;;
    "Minutos")
        timeout=$(expr ${data[0]} \* 60)
        echo $timeout
    ;;
    "Segundos")
        timeout=$(expr ${data[0]})
        echo $timeout
    ;;
esac

#validaçao se for vazio e diferente de numero
