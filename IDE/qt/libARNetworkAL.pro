TARGET = arnetworkal
TEMPLATE = lib
CONFIG = static

linux-g++ {
    include(/home/heefan/drone/drone_client/IDE/qt/common.pri)
}

macx{
    include(/Users/heefan/drone/drone_client/IDE/qt/common.pri)
}

SOURCES += \
    $$LibARNetworkAL_src/*.c \
    $$LibARNetworkAL_src/Wifi/*.c \

HEADERS += \
    $$LibARNetworkAL_src/*.h \
    $$LibARNetworkAL_src/Wifi/*.h \

INCLUDEPATH += \
    /usr/include/ \
    /usr/local/include \
    $$LibARNetworkALRoot/Build \   #config.h
    $$LibARNetworkAL_src \

LIBS += -L/usr/local/lib -larsal
