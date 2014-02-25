include theos/makefiles/common.mk

TWEAK_NAME = 8tracksNoAds
8tracksNoAds_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
