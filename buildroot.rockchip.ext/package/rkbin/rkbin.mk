################################################################################
#
# rkbin
#
################################################################################

RKBIN_VERSION = d6aad64
RKBIN_SITE = https://github.com/radxa/rkbin.git
RKBIN_SITE_METHOD = git
RKBIN_INSTALL_IMAGES = YES

define RKBIN_INSTALL_IMAGES_CMDS
	mkdir -p $(BINARIES_DIR)/rkbin
	cp -a $(@D)/* $(BINARIES_DIR)/rkbin
endef

$(eval $(generic-package))
