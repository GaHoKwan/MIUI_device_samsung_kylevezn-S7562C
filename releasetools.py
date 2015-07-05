import common
import edify_generator

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "ro.product" in edify.script[i]:
      edify.script[i] = ''
      return

def MountSystem(info):
   edify = info.script
   for i in xrange(len(edify.script)):
      if "unmount" in edify.script[i]:
               edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/mmcblk0p17", "/system");'
         return

def FormatSystem(info):
   edify = info.script
   for i in xrange(len(edify.script)):
      if "format(" in edify.script[i] and "mmcblk0p17" in edify.script[i]:
               edify.script[i] = 'delete_recursive("/system");'
         return

def FullOTA_InstallEnd(info):
   RemoveDeviceAssert(info)
   MountSystem(info)
   FormatSystem(info)
