#!/bin/bash

# ./download_images.sh laenredadera.io
echo "compressing files from $1..."
ssh -i ~/.ssh/marketingsites root@$1 "cd /srv/www/laenredadera.io/current/web/app/uploads && tar -zcf - ." > /Users/vicensfayos/Projects/laenredadera.dev/site/web/app/uploads.tar.gz

echo "adding file to current project..."
cd /Users/vicensfayos/Projects/laenredadera.dev/site/web/app/uploads && rm -rf *
mv /Users/vicensfayos/Projects/laenredadera.dev/site/web/app/uploads.tar.gz /Users/vicensfayos/Projects/laenredadera.dev/site/web/app/uploads/uploads.tar.gz 
tar -zxf uploads.tar.gz && rm -rf uploads.tar.gz 

echo "process finished"

