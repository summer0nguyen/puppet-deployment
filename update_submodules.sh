git submodule update --init --recursive
git submodule foreach "(git checkout master; git pull)"