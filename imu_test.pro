#-------------------------------------------------
#
# Project created by QtCreator 2017-02-16T21:15:52
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = imu_test
TEMPLATE = app

SOURCES += main.cpp\
        dialog.cpp \
    imu.cpp \
    3DM-GX/src/mip.cpp \
    3DM-GX/src/mip_sdk_3dm.cpp \
    3DM-GX/src/mip_sdk_ahrs.cpp \
    3DM-GX/src/mip_sdk_base.cpp \
    3DM-GX/src/mip_sdk_filter.cpp \
    3DM-GX/src/mip_sdk_gps.cpp \
    3DM-GX/src/mip_sdk_inteface.cpp \
    3DM-GX/src/mip_sdk_system.cpp \
    3DM-GX/src/mip_sdk_user_functions.cpp \
    3DM-GX/src/ring_buffer.cpp \
    3DM-GX/src/byteswap_utilities.cpp


HEADERS  += dialog.h \
    3DM-GX/include/byteswap_utilities.h \
    3DM-GX/include/mainpage.h \
    3DM-GX/include/mip_gx3_35.h \
    3DM-GX/include/mip_gx3_45.h \
    3DM-GX/include/mip_gx4_15.h \
    3DM-GX/include/mip_gx4_25.h \
    3DM-GX/include/mip_gx4_45.h \
    3DM-GX/include/mip_gx4_imu.h \
    3DM-GX/include/mip_rq1_imu.h \
    3DM-GX/include/mip_rq1.h \
    3DM-GX/include/mip_sdk_3dm.h \
    3DM-GX/include/mip_sdk_ahrs.h \
    3DM-GX/include/mip_sdk_base.h \
    3DM-GX/include/mip_sdk_config.h \
    3DM-GX/include/mip_sdk_filter.h \
    3DM-GX/include/mip_sdk_gps.h \
    3DM-GX/include/mip_sdk_interface.h \
    3DM-GX/include/mip_sdk_system.h \
    3DM-GX/include/mip_sdk.h \
    3DM-GX/include/mip_types.h \
    3DM-GX/include/mip.h \
    3DM-GX/include/ring_buffer.h \
    imu.h \
    3DM-GX/include/mip_sdk_user_functions.h

FORMS    += dialog.ui

DISTFILES += \
    imu_test.pro.user

