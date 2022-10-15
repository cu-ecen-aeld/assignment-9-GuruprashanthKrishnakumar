##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = 9f803871ea19328368fe0ebb62f0d98abcfd0d6c
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:

LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-GuruprashanthKrishnakumar.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_SUBDIRS = misc-modules
LDD_SUBDIRS += scull

define LDD_INSTALL_TARGET_CMDS

	#Copy MISC-MODULES to QEMU
	$(INSTALL) -m 0755 $(@D)/misc-modules/*  $(TARGET_DIR)/usr/bin

	#Copy Scull modules to QEMU
	$(INSTALL) -m 0755 $(@D)/scull/*  $(TARGET_DIR)/usr/bin

endef

$(eval $(kernel-module))
$(eval $(generic-package))