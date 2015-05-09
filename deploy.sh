node --version
npm --version

npm config set strict-ssl false

# Enable running this script locally
if [ "$DEPLOYMENT_SOURCE" = "" ]; then
	DEPLOYMENT_SOURCE="."
fi

echo $DEPLOYMENT_SOURCE

if [ -e "$DEPLOYMENT_SOURCE/package.json" ]; then
	echo Running 'npm install --dev'
	npm install --dev
fi

if [ -e "$DEPLOYMENT_SOURCE/Gruntfile.js" ]; then
    echo Has Gruntfile
    # Having both grunt and grunt-cli as devDependencies
    # in package.json seems to cause circular dependency.
    npm install grunt-cli
    ./node_modules/grunt-cli/bin/grunt --no-color
fi