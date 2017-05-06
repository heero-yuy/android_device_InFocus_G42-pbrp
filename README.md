# InFocus M680 TWRP Device Tree
==============

This branch is for building of TeamWin Recovey Project (TWRP) Recovery.

---

# About Device

InFocus M680(G42)
![InFocus M680](http://img01.ibnlive.in/ibnlive/uploads/875x584/jpg/2015/12/infocus-m680-featured.jpg "InFocus M680")

### Specifications

Component Type | Details
-------:|:-------------------------
CPU     | 1.3GHz Octa-Core MT6753
GPU     | Mali-T720
Memory  | 2GB RAM
Shipped Android Version | 5.0
Storage | 16GB
Battery | 2600 mAh
Display | 5.5" 1920 x 1080 px DPI 480
Rear Camera | 13MP, Int.13MP 
Front Camera | 13MP, Int. 13MP

---

#  Now Starts
 Add Omni Source or Minimal TWRP Source
 
 `repo sync git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-6.0`
 
#  Add a Local Manifest
Copy This: To `.repo/local_manifests/device_G42.xml`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/InFocus/G42" name="AndroiableDroid/android_device_InFocus_G42" remote="github" revision="twrp-6.0" groups="pdk" />
</manifest>
```
Then Run `repo sync` 

```sh
. build/envsetup.sh && lunch omni_G42-userdebug && mka -j# recoveryimage 
```
`# = No. of CPU of your PC'

### Thanks to:
 * ccsysadmin
 * TeamWin
 * Team M.A.D.
