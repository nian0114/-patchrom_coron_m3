.class public Landroid/view/BaiduVolumePanel;
.super Landroid/view/VolumePanel;
.source "BaiduVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BaiduVolumePanel$BaiduInjector;
    }
.end annotation


# static fields
.field static final MSG_THEME_CHANGED:I = 0x3e8


# instance fields
.field mIsThemeChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 0
    .parameter "context"
    .parameter "volumeService"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method protected addOtherVolumes()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    sget-object v3, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .local v2, streamType:I
    sget-object v3, Landroid/view/VolumePanel$StreamResources;->AlarmStream:Landroid/view/VolumePanel$StreamResources;

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/view/VolumePanel$StreamResources;->RingerStream:Landroid/view/VolumePanel$StreamResources;

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-eq v2, v3, :cond_0

    sget-object v3, Landroid/view/VolumePanel$StreamResources;->MediaStream:Landroid/view/VolumePanel$StreamResources;

    iget v3, v3, Landroid/view/VolumePanel$StreamResources;->streamType:I

    if-ne v2, v3, :cond_1

    :cond_0
    sget-object v3, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    :cond_1
    sget-object v3, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroid/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/view/BaiduVolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Landroid/view/BaiduVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/VolumePanel$StreamControl;

    .local v1, sc:Landroid/view/VolumePanel$StreamControl;
    iget-object v3, p0, Landroid/view/BaiduVolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Landroid/view/BaiduVolumePanel;->updateSlider(Landroid/view/VolumePanel$StreamControl;)V

    goto :goto_1

    .end local v1           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v2           #streamType:I
    :cond_4
    return-void
.end method

.method protected createSliders()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    iget-object v11, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    const-string v13, "layout_inflater"

    invoke-virtual {v11, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .local v2, inflater:Landroid/view/LayoutInflater;
    new-instance v11, Ljava/util/HashMap;

    sget-object v13, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v13, v13

    invoke-direct {v11, v13}, Ljava/util/HashMap;-><init>(I)V

    iput-object v11, p0, Landroid/view/BaiduVolumePanel;->mStreamControls:Ljava/util/HashMap;

    iget-object v11, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    iget-object v11, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, #android:bool@config_voice_capable#t

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .local v3, mVoiceCapable:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v11, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    array-length v11, v11

    if-ge v1, v11, :cond_4

    sget-object v11, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v8, v11, v1

    .local v8, streamRes:Landroid/view/VolumePanel$StreamResources;
    iget v9, v8, Landroid/view/VolumePanel$StreamResources;->streamType:I

    .local v9, streamType:I
    if-eqz v3, :cond_0

    sget-object v11, Landroid/view/VolumePanel$StreamResources;->NotificationStream:Landroid/view/VolumePanel$StreamResources;

    if-ne v8, v11, :cond_0

    sget-object v11, Landroid/view/BaiduVolumePanel;->STREAMS:[Landroid/view/VolumePanel$StreamResources;

    aget-object v11, v11, v1

    iput-boolean v12, v11, Landroid/view/VolumePanel$StreamResources;->show:Z

    :cond_0
    new-instance v6, Landroid/view/VolumePanel$StreamControl;

    invoke-direct {v6, p0}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;)V

    .local v6, sc:Landroid/view/VolumePanel$StreamControl;
    iput v9, v6, Landroid/view/VolumePanel$StreamControl;->streamType:I

    const v11, #android:layout@volume_adjust_item#t

    const/4 v13, 0x0

    invoke-virtual {v2, v11, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, v6, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v13, #android:id@stream_icon#t

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v6, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v11, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v13, v8, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v11, v8, Landroid/view/VolumePanel$StreamResources;->iconRes:I

    iput v11, v6, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    iget v11, v8, Landroid/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v11, v6, Landroid/view/VolumePanel$StreamControl;->iconMuteRes:I

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v13, v6, Landroid/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v13, #android:id@seekbar#t

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/SeekBar;

    iput-object v11, v6, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v13, #android:id@title#t

    invoke-virtual {v11, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .local v7, streamName:Landroid/widget/TextView;
    iget v11, v8, Landroid/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, descText:Ljava/lang/String;
    const v11, #android:string@volume_end_text#t

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, unKnownText:Ljava/lang/String;
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, ""

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x6

    if-eq v9, v11, :cond_2

    if-nez v9, :cond_3

    :cond_2
    const/4 v4, 0x1

    .local v4, plusOne:I
    :goto_1
    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {p0, v9}, Landroid/view/BaiduVolumePanel;->getStreamMaxVolume(I)I

    move-result v13

    add-int/2addr v13, v4

    invoke-virtual {v11, v13}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v11, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v11, v6, Landroid/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v11, v6}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    iget-object v11, p0, Landroid/view/BaiduVolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v4           #plusOne:I
    :cond_3
    move v4, v12

    goto :goto_1

    .end local v0           #descText:Ljava/lang/String;
    .end local v6           #sc:Landroid/view/VolumePanel$StreamControl;
    .end local v7           #streamName:Landroid/widget/TextView;
    .end local v8           #streamRes:Landroid/view/VolumePanel$StreamResources;
    .end local v9           #streamType:I
    .end local v10           #unKnownText:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    invoke-super {p0, p1}, Landroid/view/VolumePanel;->handleMessage(Landroid/os/Message;)V

    invoke-static {p0, p1}, Landroid/view/BaiduVolumePanel$BaiduInjector;->handleMessage(Landroid/view/BaiduVolumePanel;Landroid/os/Message;)V

    return-void
.end method

.method listenToRingerMode()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/BaiduVolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/view/BaiduVolumePanel$1;

    invoke-direct {v2, p0}, Landroid/view/BaiduVolumePanel$1;-><init>(Landroid/view/BaiduVolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 0
    .parameter "streamType"
    .parameter "flags"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    invoke-static {p0}, Landroid/view/BaiduVolumePanel$BaiduInjector;->checkThemeChanged(Landroid/view/BaiduVolumePanel;)V

    return-void
.end method
