balance=1000

while true; do
    echo "----------------------------------------"
    echo "Welcome to simpe Bank"
    echo "1. Deposit"
    echo "2. Withdraw"
    echo "3. Check Balance"
    echo "4. Exit"
    echo "5. Statments"
    echo "----------------------------------------"
    read -p  "Choose an option: " choose
    case $choose in
        1)
            read -p "Enter amount deposit: " amount #500
                if [[ $amount -ge 0 ]]; then
                    balance=$((balance+amount)) #1000+500
                   
                    echo "New balance: $balance" #1
                else
                    echo "Invalid amount "
                fi
                
            ;;
        2)
            read -p "Enter your Withdraw amount " withd

            if [[ $withd -le $balance ]]; then
               balance=$((balance-withd))
               
                echo "sufficient amount"
                echo "New balance: $balance"
            else
                echo "Unfficient amount from balance $deposit"
                
            fi
           echo "Withdraw section"
           ;;
        3)

            echo "Your current balance: $balance"

            echo "Your current balance: $deposit"

            ;;
        4)
            echo "Goodbye!"
            exit 0 
            ;;
        
        5)
        echo "------------------------------------"
        echo "Account Statment"
        
       echo "deposit : $amount"
       echo "withdraw : $withd"
       echo "curent balance : $balance"
        ;;
       *)
            echo "Invalide option!!"
            echo "Please choose a valid option"
            ;;
    esac
done