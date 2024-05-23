    read -p "请输入钱包地址: " wallet_address
    artelad query bank balances "$wallet_address"
