# Post Dinamic DNS Batch

## Table of Contents

- [Project Title](#project-title)
  - [Table of Contents](#table-of-contents)
  - [About ](#about-)
  - [Getting Started ](#getting-started-)
    - [Prerequisites](#prerequisites)
    - [Installing](#installing)
  - [Usage ](#usage-)

## About <a name = "about"></a>

myDNSを使ってダイナミックDNSを設定するスクリプトです  
raspberry piなど使って数時間ごとに実行すると良いと思います

ダイナミックDNSの管理をしているmysdn  
http://www.mydns.jp/  

グローバルIPを取得するために使用するサービス  
http://icanhazip.com/  


## Getting Started <a name = "getting_started"></a>

### Prerequisites

ルートに.envを作成しに以下を記入して保存してください

```
MYDNS_MID=XXXXXX
MYDNS_PW=XXXXXX

SLACK_WEBHOOK_URL=http://xxxxxxxxxx.xxx
```

### Settings

cronを有効にする
```
$ sudo vim /etc/rsyslog.conf
// 以下のコメントアウトを外す
#cron.*                          /var/log/cron.log
$ sudo /etc/init.d/rsyslog restart
```

cronに追加する

```
$ crontab -e
```

以下を追加する
```
0 */3 * * * . /home/pi/project/mydns_batch/exe.sh >> /var/log/mydns.log 2>&1
```

## Usage <a name = "usage"></a>

以下を実行してください

```
$ . exe.sh
```
