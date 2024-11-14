AESDCHAR_VERSION = '1b98f7aed319e57e572d19326da5b96b98d008c9'
AESDCHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-damarre89.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver/
define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
endef
$(eval $(kernel-module))
$(eval $(generic-package))