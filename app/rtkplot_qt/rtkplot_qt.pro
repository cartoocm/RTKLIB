#-------------------------------------------------
#
# Project created by QtCreator 2016-01-30T18:29:59
#
#-------------------------------------------------

QT       += widgets core gui webkitwidgets

greaterThan(QT_MAJOR_VERSION, 4) {
    QT += widgets serialport
    DEFINES += QT5
}

lessThan(QT_MAJOR_VERSION, 5) {
    LIBS += -lqextserialport-1.2
    DEFINES += QEXTSERIALPORT
}

include(../../RTKLib.pri)

TARGET = rtkplot_qt
TEMPLATE = app

INCLUDEPATH += ../../src/ ../appcmn_qt ../rtkplot_qt

#QMAKE_CXXFLAGS += -pg
#QMAKE_LFLAGS += -pg

linux{
    LIBS += -lpng ../../src/libRTKLib.a
}
win32 {
    debug:LIBS += ../../src/debug/libRTKLib.a -lWs2_32 -lwinmm
    else:LIBS += ../../src/release/libRTKLib.a -lWs2_32 -lwinmm
}

SOURCES += \
    ../appcmn_qt/aboutdlg.cpp \
    conndlg.cpp \
    geview.cpp \
    gmview.cpp \
    mapdlg.cpp \
    plotcmn.cpp \
    plotdata.cpp \
    plotdraw.cpp \
    plotinfo.cpp \
    plotmain.cpp \
    plotopt.cpp \
    pntdlg.cpp \
    rtkplot.cpp \
    satdlg.cpp \
    skydlg.cpp \
    ../appcmn_qt/refdlg.cpp \
    ../appcmn_qt/viewer.cpp \
    ../appcmn_qt/vieweropt.cpp \
    ../appcmn_qt/cmdoptdlg.cpp \
    ../appcmn_qt/fileoptdlg.cpp \
    ../appcmn_qt/serioptdlg.cpp \
    ../appcmn_qt/tcpoptdlg.cpp \
    ../appcmn_qt/keydlg.cpp \
    ../appcmn_qt/graph.cpp \
    ../appcmn_qt/console.cpp \
    ../appcmn_qt/tspandlg.cpp

HEADERS  += \
    ../appcmn_qt/aboutdlg.h \
    conndlg.h \
    geview.h \
    gmview.h \
    mapdlg.h \
    plotmain.h \
    plotopt.h \
    pntdlg.h \
    satdlg.h \
    skydlg.h \
    ../appcmn_qt/refdlg.h \
    ../appcmn_qt/viewer.h \
    ../appcmn_qt/vieweropt.h \
    ../appcmn_qt/cmdoptdlg.h \
    ../appcmn_qt/fileoptdlg.h \
    ../appcmn_qt/serioptdlg.h \
    ../appcmn_qt/tcpoptdlg.h \
    ../appcmn_qt/keydlg.h \
    ../appcmn_qt/graph.h \
    ../appcmn_qt/console.h \
    ../appcmn_qt/tspandlg.h

FORMS    += \
    ../appcmn_qt/aboutdlg.ui \
    conndlg.ui \
    geview.ui \
    gmview.ui \
    mapdlg.ui \
    plotmain.ui \
    plotopt.ui \
    pntdlg.ui \
    satdlg.ui \
    skydlg.ui \
    ../appcmn_qt/refdlg.ui \
    ../appcmn_qt/viewer.ui \
    ../appcmn_qt/vieweropt.ui \
    ../appcmn_qt/cmdoptdlg.ui \
    ../appcmn_qt/fileoptdlg.ui \
    ../appcmn_qt/serioptdlg.ui \
    ../appcmn_qt/tcpoptdlg.ui \
    ../appcmn_qt/keydlg.ui \
    ../appcmn_qt/console.ui \
    ../appcmn_qt/tspandlg.ui

RESOURCES += \
    rtkplot_qt.qrc