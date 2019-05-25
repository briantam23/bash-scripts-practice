#! /bin/sh


HTTP='https://'
APP_NAME=$1
DOMAIN='.herokuapp.com'
REQ_URL=$HTTP$APP_NAME$DOMAIN
# REQ_URL = http://newname.herokuapp.com/
echo $REQ_URL
CURL_RESPONSE=`curl -s -o /dev/null -w "%{http_code}" $REQ_URL`
echo $CURL_RESPONSE       #404,200,502,000
if [[ $CURL_RESPONSE -eq 404 ]];   #app doesn't exist
then
heroku create $APP_NAME
git add .
git commit -m $2
git push heroku master
else
echo App already exists
fi