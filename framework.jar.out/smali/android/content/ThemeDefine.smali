.class public Landroid/content/ThemeDefine;
.super Ljava/lang/Object;
.source "ThemeDefine.java"


# static fields
.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.THEME_CHANGED"

.field public static final BOUNDARY_AN:I = 0x1

.field public static final BOUNDARY_VALUE:I = 0x70000000

.field public static final BOUNDARY_YI:I = 0x5

.field public static final CONFIG_THEME:I = -0x80000000

.field public static final FILE_COLOR:Ljava/lang/String; = "res/values/colors.xml"

.field public static final FILE_CONFIG:Ljava/lang/String; = "res/values/configs.xml"

.field public static final FILE_VALUES:Ljava/lang/String; = "values/"

.field private static IconPath:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final OVL_PATH:Ljava/lang/String; = "/system/etc/baidu/theme"

.field public static final TAG_BAIDU_THEME:Ljava/lang/String; = "Baidu-Theme"

.field public static final TAG_COLOR:Ljava/lang/String; = "color"

.field public static final TAG_CONFIG:Ljava/lang/String; = "config"

.field public static final TAG_DIMEN:Ljava/lang/String; = "dimen"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_RESOURCES:Ljava/lang/String; = "resources"

.field public static final THEME_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field public static final THEME_DIALPAD:Ljava/lang/String; = "com.baidu.dialpad"

.field public static final THEME_FRAMEWORK:Ljava/lang/String; = "framework-res"

.field public static final THEME_FRAMEWORK_YI:Ljava/lang/String; = "framework-yi-res"

.field public static final THEME_ICONS:Ljava/lang/String; = "icons"

.field public static final THEME_PATH:Ljava/lang/String; = "/data/data/com.baidu.thememanager.ui/files"

.field public static final THEME_VALUE_FILE_NAME:Ljava/lang/String; = "theme_values.xml"

.field private static iconReplaceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static replaceLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static speciallPackage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIconPath()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/ThemeDefine;->initIconPath()V

    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getIconReplaceMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/content/ThemeDefine;->initIconRepalceMap()V

    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getReplacedIconResId(Landroid/content/pm/ResolveInfo;)I
    .locals 2
    .parameter "ri"

    .prologue
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/content/ThemeDefine;->getIconReplaceMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getReplacelabel()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/content/ThemeDefine;->initRepalceLabel()V

    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static initIconPath()V
    .locals 3

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_contacts.png"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_phone.png"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_smsmms.png"

    const-string v2, "com.android.mms"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_camera.png"

    const-string v2, "com.baidu.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_contact.png"

    const-string v2, "ic_launcher_shortcut_contact"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directdial.png"

    const-string v2, "ic_launcher_shortcut_directdial"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->IconPath:Ljava/util/HashMap;

    const-string v1, "/ic_launcher_shortcut_directmessage.png"

    const-string v2, "ic_launcher_shortcut_directmessage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initIconRepalceMap()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.BaiduMap"

    const v2, #android:drawable@ic_launcher_baidumap#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.netdisk"

    const v2, #android:drawable@ic_launcher_baidunetdisk#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.searchbox"

    const v2, #android:drawable@ic_launcher_baidusearch#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.browser.apps"

    const v2, #android:drawable@ic_launcher_baidubrowser#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.appsearch"

    const v2, #android:drawable@ic_launcher_baidumarket#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.voiceassistant"

    const v2, #android:drawable@ic_launcher_baiduvoiceassistant#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.chaozh.iReaderFree"

    const v2, #android:drawable@ic_launcher_baidureader#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.launcher"

    const v2, #android:drawable@ic_launcher_360launcher#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qihoo360.mobilesafe_mtk6573"

    const v2, #android:drawable@ic_launcher_360#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.alibaba.mobileim"

    const v2, #android:drawable@ic_launcher_aliwangwang#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.huluxia.gametools"

    const v2, #android:drawable@ic_launcher_huluxia_gametools#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.kugou.android"

    const v2, #android:drawable@ic_launcher_kugou_music#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "cn.kuwo.player"

    const v2, #android:drawable@ic_launcher_kuwo_player#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.moji.mjweather"

    const v2, #android:drawable@ic_launcher_moji_weather#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.immomo.momo"

    const v2, #android:drawable@ic_launcher_momo#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.pplive.androidphone"

    const v2, #android:drawable@ic_launcher_pplive#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqmusic"

    const v2, #android:drawable@ic_launcher_qqmusic#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mobileqq"

    const v2, #android:drawable@ic_launcher_qq#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qvod.player"

    const v2, #android:drawable@ic_launcher_qvodplayer#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qzone"

    const v2, #android:drawable@ic_launcher_qzone#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.renren.mobile.android"

    const v2, #android:drawable@ic_launcher_renren#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.shuqi.controller"

    const v2, #android:drawable@ic_launcher_shuqi#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.mediatek.StkSelection"

    const v2, #android:drawable@ic_launcher_sim#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.sohu.inputmethod.sogou"

    const v2, #android:drawable@ic_launcher_sogou_input#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.taobao.taobao"

    const v2, #android:drawable@ic_launcher_taobao#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.news"

    const v2, #android:drawable@ic_launcher_tencent_news#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.qqlive"

    const v2, #android:drawable@ic_launcher_tencent_qqlive#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.UCMobile"

    const v2, #android:drawable@ic_launcher_ucmobile#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.wandoujia.phoenix2"

    const v2, #android:drawable@ic_launcher_wandoujia#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.tencent.mm"

    const v2, #android:drawable@ic_launcher_wechat#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.sina.weibo"

    const v2, #android:drawable@ic_launcher_weibo#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.snda.wifilocating"

    const v2, #android:drawable@ic_launcher_wifiwnys#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "im.yixin"

    const v2, #android:drawable@ic_launcher_yixin#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.youdao.dict"

    const v2, #android:drawable@ic_launcher_youdao#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.youku.phone"

    const v2, #android:drawable@ic_launcher_youku#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.eg.android.AlipayGphone"

    const v2, #android:drawable@ic_launcher_zhifubao#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baidu.security"

    const v2, #android:drawable@ic_launcher_security#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.dolby.ds1appUI"

    const v2, #android:drawable@ic_launcher_dolby#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.qiyi.video"

    const v2, #android:drawable@ic_launcher_iyqiyi#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->iconReplaceMap:Ljava/util/HashMap;

    const-string v1, "com.baiyi_mobile.gamecenter"

    const v2, #android:drawable@ic_launcher_baidugamecenter#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initRepalceLabel()V
    .locals 3

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const v1, #android:string@replace_browser_key#t

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, #android:string@replace_browser_value#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const v1, #android:string@replace_market_key#t

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, #android:string@replace_market_value#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const v1, #android:string@replace_reader_key#t

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, #android:string@replace_reader_value#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/content/ThemeDefine;->replaceLabelMap:Ljava/util/HashMap;

    const v1, #android:string@replace_dolby_key#t

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, #android:string@replace_dolby_value#t

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initSpecialSet()V
    .locals 2

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    const-string v1, "com.baidu.gallery3d"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static interceptLabelRes(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .parameter "pm"
    .parameter "packageName"
    .parameter "label"

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Landroid/content/ThemeDefine;->getReplacelabel()Ljava/util/HashMap;

    move-result-object v1

    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .local v2, resId:I
    invoke-virtual {p0, p1, v2, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, p1, v3, v4}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    .end local v2           #resId:I
    .end local p2
    :cond_1
    return-object p2
.end method

.method public static isSpecialPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    :cond_0
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/content/ThemeDefine;->initSpecialSet()V

    :cond_1
    sget-object v0, Landroid/content/ThemeDefine;->speciallPackage:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
