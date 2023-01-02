# 一只菜鸡的GPG 使用 记录

### 查看本机所拥有的公钥和私钥

```
gpg --list-key
```

### 删除（先讲删除

```
gpg --delete-secret-and-public-key {xxxx}
```

这里的xxx就是上门 list-key所列出的 Pub下面的私钥ID

好了接下来我们讲怎么生成

### 生成

```
gpg --full-generate-key
```

接下来默认选1 RSA加密

输入 姓名 邮箱 注释 

生成完成。

## 输出密钥

输出公钥

```bash
gpg --armor --output First_public_key.txt --export {xxxx}
```

输出私钥

```bash
gpg --armor --output First_secret_key.txt --export-secret-keys {xxxx}
```

## 使用

