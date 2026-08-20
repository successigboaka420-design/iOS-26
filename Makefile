export THEOS_PACKAGE_SCHEME = rootless

ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Seko

Seko_FILES = Seko/Seko.xm Seko/SekoGlass.m
Seko_CFLAGS = -fobjc-arc
Seko_FRAMEWORKS = UIKit Foundation QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += SekoPrefs
include $(THEOS_MAKE_PATH)/aggregate.mk