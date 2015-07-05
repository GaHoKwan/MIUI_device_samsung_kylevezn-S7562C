#
# Makefile
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI.zip

# the location for local-ota to save target-file
local-previous-target-dir := 

# All apps from original ZIP, but has smali files chanded
local-modified-apps := SamsungCamera SecMediaProvider

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider Stk

local-miui-modified-apps := MiuiHome Phone ThemeManager MiuiSystemUI

# Config density for co-developers to use the aaps with HDPI or XHDPI resource,
# Default configrations are HDPI for ics branch and XHDPI for jellybean branch
local-density := HDPI

local-phone-apps = := ApplicationsProvider BackupRestoreConfirmation BadgeProvider BluetoothAvrcp BluetoothMap BluetoothTest CSC ClipboardSaveService CertInstaller DefaultContainerService KeyChain LogsProvider MusicFX MtpApplication OmaCP PhoneErrService PopupuiReceiver Preconfig PreloadInstaller SecMediaProvider SecurityProvider SecLiveWallpapersPicker Stk UserDictionaryProvider VpnDialogs WlanTest minimode-res wssyncmlnps PickUpTutorial CapabilityManagerService CertInstaller  ContextAwareService DrmProvider EnterprisePermissions INDI_Server JobManager NoiseField OmaCP OmaDrmPopup PackageInstaller PhaseBeam SecurityProvider VpnDialogs BluetoothAvrcp BluetoothMap BluetoothTest

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

# To define any local-target
local-pre-zip-misc:
	cp -rf overlay/system $(ZIP_DIR)/

	rm -rf $(ZIP_DIR)/system/fonts/Miui-Bold.ttf
	rm -rf $(ZIP_DIR)/system/fonts/Miui-Regular.ttf
	rm -rf $(ZIP_DIR)/system/tts/*
	rm -rf $(ZIP_DIR)/system/lib/libpolaris*

include $(PORT_BUILD)/porting.mk

