#!/bin/bash

#navigate into our working directory
cd /home/ec2-user/express-app

#add nvm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" #loads nvm bash compleation

#install node modules
npm install

#Start appliaction in the background
node app.js > app.out.log 2> app.err.log < /dev/null &
