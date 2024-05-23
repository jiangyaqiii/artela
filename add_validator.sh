read -p "请输入您的钱包名称: " wallet_name
read -p "请输入您想设置的验证者的名字: " validator_name
    
artelad tx staking create-validator \
--amount="1art" \
--pubkey=$(artelad tendermint show-validator) \
--moniker="$validator_name" \
--commission-rate="0.10" \
--commission-max-rate="0.20" \
--commission-max-change-rate="0.01" \
--min-self-delegation="1" \
--gas="200000" \
--chain-id="artela_11822-1" \
--from="$wallet_name" \
