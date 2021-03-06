sudo apt install -y kodi libboost-all-dev libusb-1.0.0-dev libssl-dev cmake libprotobuf-dev protobuf-c-compiler protobuf-compiler libqt5multimedia5 libqt5multimedia5-plugins libqt5multimediawidgets5 qtmultimedia5-dev libqt5bluetooth5 libqt5bluetooth5-bin qtconnectivity5-dev pulseaudio librtaudio-dev librtaudio5a
make
cd
git clone -b master https://github.com/f1xpl/aasdk.git
mkdir aasdk_build
cd aasdk_build
cmake -DCMAKE_BUILD_TYPE=Release ../aasdk
make

cd /opt/vc/src/hello_pi/libs/ilclient
make
cd
git clone -b master https://github.com/f1xpl/openauto.git
mkdir openauto_build
cd openauto_build
cmake -DCMAKE_BUILD_TYPE=Release -DRPI3_BUILD=TRUE -DAASDK_INCLUDE_DIRS="/home/pi/aasdk/include" -DAASDK_LIBRARIES="/home/pi/aasdk/lib/libaasdk.so" -DAASDK_PROTO_INCLUDE_DIRS="/home/pi/aasdk_build" -DAASDK_PROTO_LIBRARIES="/home/pi/aasdk/lib/libaasdk_proto.so" ../openauto
make

