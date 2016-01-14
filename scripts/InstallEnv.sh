#/bin/bash

# 功能：初始化linux环境

# 软件存储的位置
SoftwareFolder=~/software
# 执行脚本的原始目录
OriginalFolder=$(pwd)
# 从GitHub下载下来的软件的名字
DownloadZip=$SoftwareFolder/master.zip
# Git软件压缩包的名字
GitZip=$SoftwareFolder/git-master.zip

# 安装Git
function InstallGit()
{
    echo "InstallGit"
    cd $SoftwareFolder

    Download "https://github.com/git/git/archive/master.zip" "$DownloadZip" "$GitZip"
    #wget https://github.com/git/git/archive/master.zip
    #mv $DownloadZip $GitZip
    #unzip $GitZip
}

# 下载文件，并完成重命名和解压
function Download()
{
    url="$1"
    originalName="$2"
    destName="$3"

    wget $url
    mv $originalName $destName
    unzip $destName
}

rm -fr $SoftwareFolder

# 建立软件文件夹
if [ ! -e "$SoftwareFolder" ]; then
    mkdir $SoftwareFolder
fi

InstallGit
