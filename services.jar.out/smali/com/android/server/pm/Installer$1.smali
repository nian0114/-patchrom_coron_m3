.class Lcom/android/server/pm/Installer$1;
.super Ljava/lang/Object;
.source "Installer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method constructor <init>(Lcom/android/server/pm/Installer;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/Installer$1;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/android/server/pm/Installer$1;->this$0:Lcom/android/server/pm/Installer;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/server/pm/Installer;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/pm/Installer$1;->this$0:Lcom/android/server/pm/Installer;

    #calls: Lcom/android/server/pm/Installer;->checkPoller()V
    invoke-static {v0}, Lcom/android/server/pm/Installer;->access$000(Lcom/android/server/pm/Installer;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
