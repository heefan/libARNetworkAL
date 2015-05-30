linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx{
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

TARGET = arnetworkal
TEMPLATE = lib
CONFIG += static
CONFIG += debug
DESTDIR = $$SdkInstallPath_lib

SOURCES += \
    $$LibARNetworkAL_src/*.c \
    $$LibARNetworkAL_src/Wifi/*.c \

HEADERS += \
#    $$LibARNetworkAL_src/*.h \
#    $$LibARNetworkAL_src/Wifi/*.h \
    $$LibARNetworkAL_inc/libARNetworkAL/*.h \

INCLUDEPATH += \
    $$SdkInstallPath_inc \
    $$LibARNetworkAL/Build \   #config.h
    $$LibARNetworkAL_src \     #private header for libARNetworkAL

LIBS +=  \
    -L$$SdkInstallPath_lib \
    -larsal
