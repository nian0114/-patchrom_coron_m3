apkBaseName=$1
tempSmaliDir=$2

if [ "$apkBaseName" = "MediaProvider" ];then
        echo ">>> in custom_app for $apkBaseName to adjust interface"
	sed -i 's#invoke-static/range {.*}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I#invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/MediaProvider;->getExternalStorageFatVolumeId()I#g' $tempSmaliDir/smali/com/android/providers/media/MediaProvider.smali
fi
