# XCConfigSample
使用 xcconfig 文件存放配置，并使用脚本生成源文件

# branches
## master

使用 shell 脚本生成源文件
```sh
chmod +x Config.sh
```

## rubyScript
使用 ruby 脚本生成源文件
如有警告：
`warning: Insecure world writable dir /usr/local/bin in PATH, mode 040777`

```sh
sudo chmod go-w /usr/local/bin
```