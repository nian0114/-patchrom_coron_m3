.class public Lcom/android/server/pm/PreferredActivityBaidu;
.super Landroid/content/IntentFilter;
.source "PreferredActivityBaidu.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/content/ComponentName;)V
    .locals 0
    .parameter "filter"
    .parameter "componentName"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p2, p0, Lcom/android/server/pm/PreferredActivityBaidu;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getmComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivityBaidu;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method
