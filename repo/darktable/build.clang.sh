set -eo pipefail
sudo apt install -y appstream-util \
    desktop-file-utils \
    gettext \
    intltool \
    libatk1.0-dev \
    libcairo2-dev \
    libcolord-dev \
    libcolord-gtk-dev \
    libcmocka-dev \
    libcups2-dev \
    libcurl4-gnutls-dev \
    libexiv2-dev \
    libgdk-pixbuf2.0-dev \
    libglib2.0-dev \
    libgphoto2-dev \
    libgraphicsmagick1-dev \
    libgtk-3-dev \
    libheif-dev \
    libjpeg-dev \
    libjson-glib-dev \
    liblcms2-dev \
    liblensfun-dev \
    liblua5.2-dev \
    liblua5.3-dev \
    liblua5.4-dev \
    libopenexr-dev \
    libopenjp2-7-dev \
    libosmgpsmap-1.0-dev \
    libpango1.0-dev \
    libpng-dev \
    libpugixml-dev \
    librsvg2-dev \
    libsaxon-java \
    libsecret-1-dev \
    libsqlite3-dev \
    libtiff5-dev \
    libwebp-dev \
    libx11-dev \
    libxml2-dev \
    libxml2-utils \
    perl \
    po4a \
    python3-jsonschema \
    xsltproc \
    zlib1g-dev \
    libpotrace-dev \
    libgmic-dev
git clone --branch release-5.6.0 --depth 1 https://github.com/darktable-org/darktable.git
cd darktable
git submodule update --init src/external/rawspeed
git submodule update --init src/external/OpenCL
git submodule update --init src/external/libxcf
git submodule update --init src/external/whereami
git submodule update --init src/external/LibRaw
git submodule update --init src/external/lua-scripts
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -G Ninja -DBUILD_SHARED_LIBS=ON -DUSE_OPENCL=OFF -DUSE_OPENMP=OFF -DCMAKE_C_FLAGS="-Wno-error=unused-but-set-global -Wno-error=thread-safety-analysis"
cmake --build . -j
