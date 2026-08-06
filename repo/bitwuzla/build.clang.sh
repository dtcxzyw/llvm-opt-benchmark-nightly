set -eo pipefail
uv pip install meson
sudo apt install -y libgmp-dev libmpfr-dev libcadical-dev libsymfpu-dev libgtest-dev libcryptominisat5-dev
git clone --branch 0.9.1 --depth 1 https://github.com/bitwuzla/bitwuzla.git
cd bitwuzla
./configure.py
cd build && ninja
