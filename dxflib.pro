exists( ../mkspecs/defs.pro ):include( ../mkspecs/defs.pro )

TEMPLATE = lib
DESTDIR = lib
CONFIG += staticlib warn_on
#CONFIG -= qt debug_and_release

win32-msvc {
  DEFINES += _CRT_SECURE_NO_DEPRECATE
}

macx {
  QMAKE_MAC_SDK=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.6.sdk
  CONFIG+=x86_64 x86
}

INCLUDEPATH += src
HEADERS = \
    src/dl_attributes.h\
    src/dl_codes.h\
    src/dl_creationadapter.h\
    src/dl_creationinterface.h\
    src/dl_dxf.h\
    src/dl_entities.h\
    src/dl_exception.h\
    src/dl_extrusion.h\
    src/dl_writer.h\
    src/dl_writer_ascii.h
SOURCES = \
    src/dl_dxf.cpp\
    src/dl_writer_ascii.cpp
TARGET = libdxf
#OBJECTS_DIR = .obj
CONFIG(debug, debug|release) {
    TARGET = $$join(TARGET,,,_d)
}
