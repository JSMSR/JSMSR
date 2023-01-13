`apt-get install bind9 dnsutils`

install bind9

`vim /etc/resolv.conf`

編輯 resolv （DNS）

`cd/etc/bind`

進入bind9目錄

`cat named.conf`

查看bind9 配置

 `vim named.conf.options`

修改fowrad9取消//註釋

將IP寫為公共DNS（223.5.5.5）



遞歸DNS服務器

`systemctl restart bind9`

重啟bind9 進程

（如果沒問題，這時候可以ping通 ipv4）

`zone "localhost" {`
        `type master;`
        `file "/etc/bind/db.local";`
`};`

（通過修改此配置到`named.conf.local`下創建DNS）

`cat named.conf.default-zones`

(位於此位置)

