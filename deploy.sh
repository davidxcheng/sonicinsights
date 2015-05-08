echo heysan

node --version
npm --version

if [ -e "$DEPLOYMENT_SOURCE/Gruntfile.js" ]; then
    echo Has Gruntfile
fi

