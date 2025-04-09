QT += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17
TEMPLATE = lib
CONFIG += static
DESTDIR = $${lib_dir}/$${TARGET}

DEFINES += QT_DEPRECATED_WARNINGS

HEADERS += \
    $$PWD/qsourcehighliter.h \
    $$PWD/qsourcehighliterthemes.h \
    $$PWD/languagedata.h

SOURCES += \
    $$PWD/qsourcehighliter.cpp \
    $$PWD/languagedata.cpp \
    $$PWD/qsourcehighliterthemes.cpp

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    README.md
