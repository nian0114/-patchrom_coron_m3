.class public Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;
.super Lcom/android/internal/policy/impl/PhoneWindowManager;
.source "PhoneWindowManagerBaidu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;
    }
.end annotation


# instance fields
.field private isEnablePowerLongPressWhenLock:Z

.field private isEnableVolumeRevoke:Z

.field mCurrWin:Landroid/view/WindowManagerPolicy$WindowState;

.field private mDeviceHardwareKeys:I

.field mDisableVibration:Z

.field private mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

.field mInterestingKeyRunnable:Ljava/lang/Runnable;

.field private mLongPressInterval:J

.field mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

.field mPreInsterestingKey:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mLongPressInterval:J

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    return-void
.end method

.method static synthetic access$iput-isEnablePowerLongPressWhenLock-6099bd(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    return p1
.end method

.method static synthetic access$iput-isEnableVolumeRevoke-ae1390(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    return p1
.end method

.method static synthetic access$iput-mHardwareKeyLongPressActions-c13565(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;[Lcom/android/internal/util/ButtonHelper$Action;)[Lcom/android/internal/util/ButtonHelper$Action;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    return-object p1
.end method

.method private readSettings()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "volume_revoke"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    const-string v1, "disable_power_menu_when_lock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/ButtonHelper;->getHardwareKeyLongPressAction(Landroid/content/Context;)[Lcom/android/internal/util/ButtonHelper$Action;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getAction(I)Lcom/android/internal/util/ButtonHelper$Action;
    .locals 3
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0xdb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x54

    if-ne p1, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0xbb

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHardwareKeyLongPressActions:[Lcom/android/internal/util/ButtonHelper$Action;

    aget-object v0, v0, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 3
    .parameter "context"
    .parameter "windowManager"
    .parameter "windowManagerFuncs"

    .prologue
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, #android:integer@config_deviceHardwareKeys#t

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDeviceHardwareKeys:I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->readSettings()V

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mObserver:Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDeviceHardwareKeys:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$KeySettingsObserver;->startObserving(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 12
    .parameter "win"
    .parameter "event"
    .parameter "policyFlags"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->keyguardOn()Z

    move-result v4

    .local v4, keyguardOn:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .local v3, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .local v6, repeatCount:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    .local v5, metaState:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    .local v2, flags:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_0

    const/4 v1, 0x1

    .local v1, down:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    .local v0, canceled:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    const/4 v7, 0x1

    .local v7, virtualKey:Z
    :goto_1
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mCurrWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v7, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isInterestingKey(I)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    if-eqz v8, :cond_2

    const-wide/16 v8, -0x1

    :goto_2
    return-wide v8

    .end local v0           #canceled:Z
    .end local v1           #down:Z
    .end local v7           #virtualKey:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .restart local v0       #canceled:Z
    .restart local v1       #down:Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7       #virtualKey:Z
    :cond_2
    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v8, v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->makeActionRunnable(Landroid/content/Context;IZ)Ljava/lang/Runnable;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    iget-wide v10, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mLongPressInterval:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    sparse-switch v3, :sswitch_data_0

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v8

    goto :goto_2

    :sswitch_0
    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    const-wide/16 v8, -0x1

    goto :goto_2

    :sswitch_1
    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    const-wide/16 v8, -0x1

    goto :goto_2

    :sswitch_2
    const/16 v8, 0x52

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    const-wide/16 v8, -0x1

    goto :goto_2

    :sswitch_3
    if-nez v4, :cond_5

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->showOrHideRecentAppsDialog(I)V

    :cond_5
    const-wide/16 v8, -0x1

    goto :goto_2

    :sswitch_4
    const/16 v8, 0x54

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/internal/util/ButtonActions;->triggerVirtualKeypress(IZZ)V

    const-wide/16 v8, -0x1

    goto :goto_2

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->launchAssistAction()V

    const-wide/16 v8, -0x1

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPreInsterestingKey:Landroid/view/KeyEvent;

    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mInterestingKeyRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, -0x1

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_4
        0xbb -> :sswitch_3
        0xdb -> :sswitch_5
    .end sparse-switch
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I
    .locals 1
    .parameter "event"
    .parameter "policyFlags"
    .parameter "isScreenOn"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mSystemBooted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p0, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->interceptKeyBeforeQueueingHook(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;IZ)I

    move-result v0

    goto :goto_0
.end method

.method public interceptKeyBeforeQueueingHook(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 7
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_1

    move v0, v3

    .local v0, down:Z
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .local v1, keyCode:I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    move v2, v3

    .local v2, virtualKey:Z
    :goto_1
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_2
    return-void

    .end local v0           #down:Z
    .end local v1           #keyCode:I
    .end local v2           #virtualKey:Z
    :cond_1
    move v0, v4

    goto :goto_0

    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    :cond_2
    move v2, v4

    goto :goto_1

    .restart local v2       #virtualKey:Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->wakeUpWithVolumeKey()V

    goto :goto_2

    :sswitch_1
    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->flashClose(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z

    :cond_3
    :sswitch_2
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_1
        0x52 -> :sswitch_2
        0x54 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xdb -> :sswitch_2
    .end sparse-switch
.end method

.method isInterestingKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    const/16 v0, 0xdb

    if-eq p1, v0, :cond_0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeActionRunnable(Landroid/content/Context;IZ)Ljava/lang/Runnable;
    .locals 1
    .parameter "context"
    .parameter "keyCode"
    .parameter "isKeyguardOn"

    .prologue
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;ZILandroid/content/Context;)V

    .local v0, runnable:Ljava/lang/Runnable;
    return-object v0
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 2
    .parameter "win"
    .parameter "effectId"
    .parameter "always"

    .prologue
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mDisableVibration:Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v0

    goto :goto_0
.end method

.method showGlobalActionsDialog()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnablePowerLongPressWhenLock:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mKeyguardDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isShowingAndNotHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto :goto_0
.end method

.method public wakeUpWithVolumeKey()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->isEnableVolumeRevoke:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManagerBaidu;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_0
    return-void
.end method
