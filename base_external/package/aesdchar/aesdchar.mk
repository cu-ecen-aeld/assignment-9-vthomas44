AESDCHAR_VERSION = main
AESDCHAR_SITE = https://github.com/cu-ecen-aeld/assignments-3-and-later-vthomas44.git
AESDCHAR_SITE_METHOD = git
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver
AESDCHAR_LICENSE = Dual BSD/GPL

$(eval $(kernel-module))
$(eval $(generic-package))
