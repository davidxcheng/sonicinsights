node --version
npm --version

npm config set strict-ssl false

# Enable running this script locally
if [ "$DEPLOYMENT_SOURCE" = "" ]; then
	DEPLOYMENT_SOURCE="."
fi

echo $DEPLOYMENT_SOURCE

if [ -e "$DEPLOYMENT_SOURCE/package.json" ]; then
	npm install
fi

if [ -e "$DEPLOYMENT_SOURCE/Gruntfile.js" ]; then
    echo Has Gruntfile
    eval npm install grunt-cli

    echo grunt-cli installed

    ./node_modules/.bin/grunt --no-color
fi