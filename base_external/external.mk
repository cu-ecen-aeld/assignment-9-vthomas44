include $(sort $(wildcard $(BR2_EXTERNAL_project_base_PATH)/package/*/*.mk))
ifeq ($(BR2_PACKAGE_AESDCHAR),y)
BASE_EXTERNAL_PACKAGES += aesdchar
endif
