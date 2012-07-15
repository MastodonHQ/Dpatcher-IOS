include theos/makefiles/common.mk

APPLICATION_NAME = dpatcher
dpatcher_FILES = main.m dpatcherApplication.mm RootViewController.mm customVC.mm customDel.mm

include $(THEOS_MAKE_PATH)/application.mk
