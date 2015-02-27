.class public Lcom/android/internal/util/ButtonHelper;
.super Ljava/lang/Object;
.source "ButtonHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ButtonHelper$1;,
        Lcom/android/internal/util/ButtonHelper$ButtonConfig;,
        Lcom/android/internal/util/ButtonHelper$Action;,
        Lcom/android/internal/util/ButtonHelper$ActionType;
    }
.end annotation


# static fields
.field public static final ACTION_DELIMITER:Ljava/lang/String; = "|"

.field public static final DISABLE_POWER_MENU_WHEN_LOCK:Ljava/lang/String; = "disable_power_menu_when_lock"

.field public static HARDWARE_KEY_CONFIG:Ljava/lang/String; = null

.field public static final HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String; = null

.field public static HARDWARE_KEY_SIZE:I = 0x0

.field public static final NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String; = null

.field public static NAV_BUTTON_CONFIG:Ljava/lang/String; = null

.field private static final PKG_SYSTEM_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PKG_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "ButtonHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x5

    sput v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_SIZE:I

    const-string v0, "hardware_key_config"

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->VoiceAssist:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String;

    const-string v0, "nav_button_config"

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Back:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Home:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Recent:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/ButtonHelper$ActionType;->Null:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHardwareKeyLongPressAction(Landroid/content/Context;)[Lcom/android/internal/util/ButtonHelper$Action;
    .locals 3
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG_DEFAULT:Ljava/lang/String;

    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/ButtonConfigHelper;->parseHardwareKeyConfigValues(Ljava/lang/String;)[Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v2

    return-object v2
.end method

.method public static getIconForNavBarButton(Landroid/content/Context;Lcom/android/internal/util/ButtonHelper$Action;Z)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "context"
    .parameter "action"
    .parameter "isSystemUI"

    .prologue
    const/4 v5, 0x0

    const-string v6, "ButtonHelper"

    const/4 v7, 0x3

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "ButtonHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getIconForNavBarButton action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    .local v3, resId:I
    const/4 v0, 0x0

    .local v0, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    :goto_0
    return-object v5

    :cond_1
    if-eqz p2, :cond_4

    :try_start_0
    const-string v6, "com.android.systemui"

    :goto_1
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, systemUiResources:Landroid/content/res/Resources;
    iget-object v5, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    sget-object v6, Lcom/android/internal/util/ButtonHelper$ActionType;->CustomApp:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v5, v6}, Lcom/android/internal/util/ButtonHelper$ActionType;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_1
    iget-object v5, p1, Lcom/android/internal/util/ButtonHelper$Action;->args:Ljava/lang/Object;

    check-cast v5, Landroid/content/Intent;

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_2
    :goto_2
    if-nez v0, :cond_3

    invoke-static {v4, p1, p2}, Lcom/android/internal/util/ButtonHelper;->getIconResIdForNavBarButton(Landroid/content/res/Resources;Lcom/android/internal/util/ButtonHelper$Action;Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_3
    move-object v5, v0

    goto :goto_0

    .end local v4           #systemUiResources:Landroid/content/res/Resources;
    :cond_4
    :try_start_2
    const-string v6, "com.android.settings"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ButtonHelper"

    const-string v7, "can\'t access systemui resources"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #systemUiResources:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getIconResIdForNavBarButton(Landroid/content/res/Resources;Lcom/android/internal/util/ButtonHelper$Action;Z)I
    .locals 3
    .parameter "systemUiResources"
    .parameter "action"
    .parameter "isSystemUI"

    .prologue
    const/4 v0, 0x0

    .local v0, resName:Ljava/lang/String;
    sget-object v1, Lcom/android/internal/util/ButtonHelper$1;->$SwitchMap$com$android$internal$util$ButtonHelper$ActionType:[I

    iget-object v2, p1, Lcom/android/internal/util/ButtonHelper$Action;->type:Lcom/android/internal/util/ButtonHelper$ActionType;

    invoke-virtual {v2}, Lcom/android/internal/util/ButtonHelper$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const-string v0, "ic_sysbar_home"

    :goto_0
    const-string v2, "drawable"

    if-eqz p2, :cond_0

    const-string v1, "com.android.systemui"

    :goto_1
    invoke-virtual {p0, v0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    const-string v0, "ic_sysbar_back"

    goto :goto_0

    :pswitch_1
    const-string v0, "ic_sysbar_home"

    goto :goto_0

    :pswitch_2
    const-string v0, "ic_sysbar_recent"

    goto :goto_0

    :pswitch_3
    const-string v0, "ic_sysbar_last_app"

    goto :goto_0

    :pswitch_4
    const-string v0, "ic_sysbar_kill_app"

    goto :goto_0

    :pswitch_5
    const-string v0, "ic_sysbar_notification"

    goto :goto_0

    :pswitch_6
    const-string v0, "ic_sysbar_power_menu"

    goto :goto_0

    :pswitch_7
    const-string v0, "ic_sysbar_search"

    goto :goto_0

    :pswitch_8
    const-string v0, "ic_sysbar_voice_assist"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.settings"

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getNavBarButtonConfig(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, config:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    :cond_1
    invoke-static {v0}, Lcom/android/internal/util/ButtonConfigHelper;->parseNavButtonConfigValues(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static setHardwareKeyLongPressAction(Landroid/content/Context;[Lcom/android/internal/util/ButtonHelper$Action;)V
    .locals 3
    .parameter "context"
    .parameter "actions"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->HARDWARE_KEY_CONFIG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ButtonConfigHelper;->makeHardwareKeyConfigValues([Lcom/android/internal/util/ButtonHelper$Action;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static setNavBarButtonConfig(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter
    .parameter "reset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/ButtonHelper$ButtonConfig;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, configs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/util/ButtonHelper$ButtonConfig;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    if-nez p2, :cond_0

    sget-object v1, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/util/ButtonConfigHelper;->makeNavButtonConfigValues(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/util/ButtonHelper;->NAV_BUTTON_CONFIG:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/util/ButtonHelper;->NAV_BAR_BUTTON_CONFIG_DEFAULT:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
