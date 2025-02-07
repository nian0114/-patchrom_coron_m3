.class Lcom/android/server/AlarmManagerService$BaiduInjector;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaiduInjector"
.end annotation


# static fields
.field static INTERVAL:J

.field static RANGE:Ljava/lang/String;

.field static isEnabled:Z

.field static mURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x5

    sput-wide v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    const-string v0, "0:0:0:0"

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->RANGE:Ljava/lang/String;

    const-string v0, "content://com.baidu.alarmalign.whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAddInterval(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "alarm_align_interval"

    sget-wide v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->INTERVAL:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAddInterval(Lcom/android/server/AlarmManagerService;IJ)J
    .locals 12
    .parameter "service"
    .parameter "type"
    .parameter "when"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .local v7, now:J
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v2

    .local v2, interval:J
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    invoke-static {v7, v8, v10, v11}, Lcom/android/server/AlarmManagerService$BaiduInjector;->next(JJ)J

    move-result-wide v5

    .local v5, next:J
    #getter for: Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$iget-mAlarmBatches-a159e0(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, alarmList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    cmp-long v10, p2, v5

    if-gez v10, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v9, 0x0

    .local v9, pre:Lcom/android/server/AlarmManagerService$Batch;
    const/4 v1, 0x0

    .local v1, batch:Lcom/android/server/AlarmManagerService$Batch;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #batch:Lcom/android/server/AlarmManagerService$Batch;
    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .restart local v1       #batch:Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v10, v10, v5

    if-lez v10, :cond_2

    :cond_1
    if-eqz v9, :cond_3

    sub-long v10, v5, p2

    .end local v1           #batch:Lcom/android/server/AlarmManagerService$Batch;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Batch;>;"
    .end local v9           #pre:Lcom/android/server/AlarmManagerService$Batch;
    :goto_0
    return-wide v10

    .restart local v1       #batch:Lcom/android/server/AlarmManagerService$Batch;
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Batch;>;"
    .restart local v9       #pre:Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    move-object v9, v1

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v1, v11}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/AlarmManagerService$BaiduInjector;->isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-wide v10, v1, Lcom/android/server/AlarmManagerService$Batch;->start:J

    sub-long/2addr v10, p2

    goto :goto_0

    :cond_3
    const-wide/16 v10, 0x0

    goto :goto_0

    .end local v1           #batch:Lcom/android/server/AlarmManagerService$Batch;
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Batch;>;"
    .end local v9           #pre:Lcom/android/server/AlarmManagerService$Batch;
    :cond_4
    const-wide/16 v10, 0x0

    goto :goto_0
.end method

.method public static hitRange(Ljava/lang/String;)Z
    .locals 14
    .parameter "rangeStr"

    .prologue
    const/16 v13, 0xc

    const/16 v12, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    const-string v10, ":"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, res:[Ljava/lang/String;
    array-length v10, v4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    aget-object v10, v4, v8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, startHourOfDay:I
    aget-object v10, v4, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .local v7, startMinute:I
    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, endHourOfDay:I
    const/4 v10, 0x3

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, endMinute:I
    if-ne v6, v1, :cond_2

    if-eq v7, v2, :cond_0

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .local v3, now:Ljava/util/Calendar;
    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Calendar;

    .local v5, start:Ljava/util/Calendar;
    invoke-virtual {v5, v12, v6}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v13, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v3}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .local v0, end:Ljava/util/Calendar;
    invoke-virtual {v0, v12, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v13, v2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move v8, v9

    :cond_4
    move v9, v8

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v5}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    :cond_6
    move v9, v8

    goto :goto_0
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_enable"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    :goto_0
    return v2

    :cond_0
    invoke-static {p0}, Lcom/android/server/AlarmManagerService$BaiduInjector;->getAddInterval(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0

    :cond_1
    sput-boolean v3, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_range"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, range:Ljava/lang/String;
    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/server/AlarmManagerService$BaiduInjector;->hitRange(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "alarm_align_when_screen_off"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    goto :goto_0

    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_4
    sput-boolean v2, Lcom/android/server/AlarmManagerService$BaiduInjector;->isEnabled:Z

    goto :goto_0
.end method

.method public static isWhiteApp(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 11
    .parameter "context"
    .parameter "alarm"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v8

    .local v8, pkg:Ljava/lang/String;
    const-string v1, "android"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/AlarmManagerService$BaiduInjector;->mURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "pkg = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_2

    if-eqz v6, :cond_1

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v9

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v1, v10

    goto :goto_0
.end method

.method public static next(JJ)J
    .locals 4
    .parameter "now"
    .parameter "interval"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .end local p0
    :goto_0
    return-wide p0

    .restart local p0
    :cond_0
    add-long v0, p0, p2

    rem-long v2, p0, p2

    sub-long p0, v0, v2

    goto :goto_0
.end method
