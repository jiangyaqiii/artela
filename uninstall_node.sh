function uninstall_node() {
    echo "你确定要卸载Artela 节点程序吗？这将会删除所有相关的数据。[Y/N]"
    read -r -p "请确认: " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            echo "开始卸载节点程序..."
            pm2 stop artelad && pm2 delete artelad
            rm -rf $HOME/.artelad $HOME/artela $(which artelad)
            echo "节点程序卸载完成。"
            ;;
        *)
            echo "取消卸载操作。"
            ;;
    esac
}
uninstall_node;
