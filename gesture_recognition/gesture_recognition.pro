QT       += core
QT       -= gui

TARGET = OpenCV-Ex1
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app

SOURCES += main.cpp

win32 {
    INCLUDEPATH += C:/opencv-2.4.11/build/install/include

    LIBS += -LC:/opencv-2.4.11/build/install/x64/mingw/lib \
        -llibopencv_core2411 \
        -llibopencv_highgui2411 \
        -llibopencv_imgproc2411 \
        -llibopencv_features2d2411 \
        -llibopencv_calib3d2411 \
        -llibopencv_ml2411 \
        -llibopencv_features2d2411
}

unix {
    CONFIG += link_pkgconfig
    PKGCONFIG += opencv

}
