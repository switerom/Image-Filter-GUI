QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

    INCLUDEPATH += "C:/libs/opencv/build/include"
    DEPENDPATH += "C:/libs/opencv/build/include"

    LIBS += -L"C:/libs/opencv/build/x64/vc16/lib/" -lopencv_world470

#    LIBS += C:libs\opencv-build\bin\libopencv_core320.dll
#    LIBS += C:libs\opencv-build\bin\libopencv_highgui320.dll
#    LIBS += C:libs\opencv-build\bin\libopencv_imgcodecs320.dll
#    LIBS += C:libs\opencv-build\bin\libopencv_imgproc320.dll
#    LIBS += C:libs\opencv-build\bin\libopencv_features2d320.dll
#    LIBS += C:libs\opencv-build\bin\libopencv_calib3d320.dll

#LIBS += -L"$$PWD/sqlite3" -lsqlite3

SOURCES += \
    ImgProc.cpp \
    QTCV.cpp \
    fourier_transform.cpp \
    histogramEqualization.cpp \
    main.cpp \
    ImgStore.cpp \
    mainwindow.cpp

HEADERS += \
    ImgProc.h \
    QTCV.h \
    fourier_transform.h \
    histogramEqualization.h \
    ImgStore.h \
    mainwindow.h

FORMS += \
    mainwindow.ui

RESOURCES += qdarkstyle/light/lightStyle.qrc \
             qdarkstyle/dark/darkStyle.qrc

# Default rules for deployment.
qnx: target.path = "C:\Users\yakov\Desktop\job\projects\img-filt-master"
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


