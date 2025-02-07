.class public Lcom/android/server/TorchService;
.super Landroid/hardware/ITorchService$Stub;
.source "TorchService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TorchService$CameraUserRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCamerasInUse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/TorchService$CameraUserRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

.field private final mStopTorchLock:Ljava/lang/Object;

.field private mTorchAppCameraId:I

.field private mTorchAppUid:I

.field private mTorchUsingSysfs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/TorchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TorchService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/hardware/ITorchService$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/TorchService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TorchService$1;-><init>(Lcom/android/server/TorchService;)V

    iput-object v0, p0, Lcom/android/server/TorchService;->mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TorchService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TorchService;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TorchService;Landroid/os/IBinder;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    return-void
.end method

.method private getBackFacingCameraId()I
    .locals 4

    .prologue
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private removeCameraUserLocked(Landroid/os/IBinder;I)V
    .locals 2
    .parameter "token"
    .parameter "cameraId"

    .prologue
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TorchService$CameraUserRecord;

    .local v0, record:Lcom/android/server/TorchService$CameraUserRecord;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/TorchService$CameraUserRecord;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method private shutdownTorch()V
    .locals 11

    .prologue
    new-instance v9, Landroid/os/HandlerThread;

    const-string v0, "StopTorch"

    invoke-direct {v9, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v9, stopTorchThread:Landroid/os/HandlerThread;
    invoke-virtual {v9}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Landroid/os/Handler;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .local v5, handler:Landroid/os/Handler;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "net.cactii.flash2.TOGGLE_FLASHLIGHT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, i:Landroid/content/Intent;
    const-string v0, "stop"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v0, 0x10000004

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v0, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/TorchService;->mStopTorchDoneReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/TorchService;->mStopTorchLock:Ljava/lang/Object;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v9}, Landroid/os/HandlerThread;->quit()Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v5, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump torch service from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v5, "Current torch service state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "  Active cameras:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .local v0, cameraId:I
    iget-object v5, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/TorchService$CameraUserRecord;

    .local v4, record:Lcom/android/server/TorchService$CameraUserRecord;
    iget v5, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne v0, v5, :cond_1

    const/4 v2, 0x1

    .local v2, isTorch:Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/TorchService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, v4, Lcom/android/server/TorchService$CameraUserRecord;->uid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, packages:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    Camera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_2

    const-string v5, "torch"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "): pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v4, Lcom/android/server/TorchService$CameraUserRecord;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-static {v6, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #isTorch:Z
    .end local v3           #packages:[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #isTorch:Z
    .restart local v3       #packages:[Ljava/lang/String;
    :cond_2
    const-string v5, "camera"

    goto :goto_3

    .end local v0           #cameraId:I
    .end local v2           #isTorch:Z
    .end local v3           #packages:[Ljava/lang/String;
    .end local v4           #record:Lcom/android/server/TorchService$CameraUserRecord;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mTorchAppUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mTorchAppCameraId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  mTorchUsingSysfs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/TorchService;->mTorchUsingSysfs:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onCameraClosed(Landroid/os/IBinder;I)V
    .locals 3
    .parameter "token"
    .parameter "cameraId"

    .prologue
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/TorchService;->removeCameraUserLocked(Landroid/os/IBinder;I)V

    iget v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p2, v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget v2, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v0, v2, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCameraOpened(Landroid/os/IBinder;I)V
    .locals 4
    .parameter "token"
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .local v0, needTorchShutdown:Z
    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget v3, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ne v1, v3, :cond_2

    iput p2, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    :cond_0
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/TorchService;->shutdownTorch()V

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/server/TorchService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/TorchService$2;-><init>(Lcom/android/server/TorchService;ILandroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/TorchService$CameraUserRecord;

    invoke-direct {v3, p1}, Lcom/android/server/TorchService$CameraUserRecord;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    return-void

    :cond_2
    :try_start_3
    iget v1, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/TorchService;->mTorchUsingSysfs:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onStartingTorch(I)Z
    .locals 4
    .parameter "cameraId"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/TorchService;->mTorchAppUid:I

    if-ltz p1, :cond_2

    iget v3, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    if-ne p1, v3, :cond_0

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/TorchService;->getBackFacingCameraId()I

    move-result p1

    iget-object v3, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    monitor-exit v2

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/TorchService;->mTorchUsingSysfs:Z

    iput p1, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onStopTorch()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/TorchService;->mCamerasInUse:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/TorchService;->mTorchUsingSysfs:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TorchService;->mTorchAppCameraId:I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/TorchService;->mTorchUsingSysfs:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
