if [ ! -f .repo/local_manifests/santoni.xml ]; then
echo "Clone local_manifests"
git clone -b 11.0 https://github.com/Jabiyeff-Project/local_manifests.git .repo/local_manifests/
else
echo "Pull local_manifests"
cd .repo/local_manifests
git pull
cd ../..
fi
