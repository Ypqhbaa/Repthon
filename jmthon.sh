branch=master
git clone -b $branch https://github.com/thejmthon/sbb_b0 /root/thejmthon
cp sbb_b0/.env /root/thejmthon/.env
cd /root/thejmthon
docker build . --rm --force-rm --compress --pull --file Dockerfile -t sbb_b0
docker run --privileged --env-file .env --rm -i sbb_b0