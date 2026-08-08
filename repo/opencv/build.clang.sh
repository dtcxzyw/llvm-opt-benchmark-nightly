set -eo pipefail
uv pip install numpy
sudo apt install libgtk2.0-dev libavcodec-dev libavformat-dev libavutil-dev \
    libswscale-dev libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev libeigen3-dev
git clone --branch 5.0.0 --depth 1 https://github.com/opencv/opencv.git
git clone --branch 5.0.0 --depth 1 https://github.com/opencv/opencv_contrib.git
cd opencv
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
  -DBUILD_opencv_legacy=OFF -DBUILD_opencv_apps=OFF -DBUILD_DOCS=OFF -DBUILD_EXAMPLES=ON -DBUILD_PERF_TESTS=ON \
  -DBUILD_TESTS=OFF -DENABLE_LTO=OFF -DENABLE_THIN_LTO=OFF -DCV_ENABLE_INTRINSICS=OFF -DCV_DISABLE_OPTIMIZATION=ON -DBUILD_SHARED_LIBS=ON
cmake --build . -j
