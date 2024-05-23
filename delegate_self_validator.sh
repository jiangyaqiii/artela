read -p "请输入质押代币数量: " math
read -p "请输入钱包名称: " wallet_name
artelad tx staking delegate $(artelad keys show $wallet_name --bech val -a)  ${math}art --from $wallet_name --chain-id=artela_11822-1 --gas=300000 --node $Artela_RPC_PORT  -y
