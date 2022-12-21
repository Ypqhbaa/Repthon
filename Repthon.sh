branch=master
git clone -b $branch https://github.com/rogerpq/RepthonAr /root/rogerpq
cp RepthonAr/.env /root/rogerpq/.env
cd /root/rogerpq
docker build . --rm --force-rm --compress --pull --file Dockerfile -t RepthonAr
docker run --privileged --env-file .env --rm -i RepthonAr
