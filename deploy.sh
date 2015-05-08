node --version
npm --version

if [ -e "$DEPLOYMENT_SOURCE/Gruntfile.js" ]; then
    echo Has Gruntfile
    npm install grunt-cli

    ./node_modules/.bin/grunt --no-color
fi

