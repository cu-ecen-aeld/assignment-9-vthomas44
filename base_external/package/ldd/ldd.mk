LDD_VERSION = main
LDD_SITE = https://github.com/cu-ecen-aeld/assignment-7-vthomas44.git
LDD_SITE_METHOD = git
LDD_MODULE_SUBDIRS = misc-modules scull
LDD_LICENSE = GPL-2.0
LDD_LICENSE_FILES = LICENSE

define LDD_INSTALL_TARGET_CMDS
    mkdir -p $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra
    $(INSTALL) -D -m 0755 $(@D)/misc-modules/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/
    $(INSTALL) -D -m 0755 $(@D)/scull/*.ko $(TARGET_DIR)/lib/modules/$(LINUX_VERSION_PROBED)/extra/
    depmod -b $(TARGET_DIR) $(LINUX_VERSION_PROBED)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
