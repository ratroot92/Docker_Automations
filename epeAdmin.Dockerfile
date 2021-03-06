
FROM maliksblr92/react_env:latest
# set working directory
WORKDIR /var/www/html/epeAdmin
ENV PATH /var/www/html/epeAdmin/node_modules/.bin:/home/ubuntu/.vscode-server/bin/622cb03f7e070a9670c94bae1a45d78d7181fbd4/bin:/home/ubuntu/.nvm/versions/node/v14.16.0/bin:/home/ubuntu/.vscode-server/bin/622cb03f7e070a9670c94bae1a45d78d7181fbd4/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
COPY . ./
RUN yarn 
EXPOSE 3001:3001
ENTRYPOINT  yarn run prod
#*************
# REPRODUCE
#*************
# recreate image via below commands 
# cd /home/asd/Desktop/development/PEC_ADMIN/cpdExam
#docker build  --rm=true -f epeAdmin/dockerfile -t epe_admin_fontend:latest epeAdmin
