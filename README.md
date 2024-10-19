# Ubuntu

- Ubuntuとたわむれるためのリポジトリ
- Dockerを使用


## ローカルとコンテナを同期する
```bash
# コンテナ全体をローカルにコピー
# docker cp <container_id>:/ ./ubuntu_24_04 
docker cp 3d8794fab09b:/ ./ubuntu_24_04 
```

docker-compose.ymlでvolumeを設定
/procと/devは、同期できない

## コマンド
```bash
# docker compose exec <service_name> <command>
docker compose exec ubuntu bash
```