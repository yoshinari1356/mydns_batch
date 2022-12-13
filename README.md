# Project Title

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
```

### Installing

特に必要有りません


## Usage <a name = "usage"></a>

以下を実行してください

```
. exe.sh
```
