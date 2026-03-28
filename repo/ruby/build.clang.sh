set -eo pipefail
sudo apt update && sudo apt install -y ruby
git clone --branch v4.0.2 --depth 1 https://github.com/ruby/ruby.git
cd ruby
./autogen.sh
mkdir build && cd build
../configure
make -j
