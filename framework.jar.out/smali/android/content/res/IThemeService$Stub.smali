.class public abstract Landroid/content/res/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Landroid/content/res/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.res.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_cacheComposedIcon:I = 0x7

.field static final TRANSACTION_getProgress:I = 0x6

.field static final TRANSACTION_isThemeApplying:I = 0x5

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.content.res.IThemeService"

    invoke-virtual {p0, p0, v0}, Landroid/content/res/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.content.res.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/res/IThemeService;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/res/IThemeService;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/res/IThemeService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/content/res/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .local v0, _arg0:Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/res/IThemeChangeListener;
    :sswitch_2
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/res/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/res/IThemeChangeListener;

    move-result-object v0

    .restart local v0       #_arg0:Landroid/content/res/IThemeChangeListener;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->removeUpdates(Landroid/content/res/IThemeChangeListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Landroid/content/res/IThemeChangeListener;
    :sswitch_3
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .local v3, cl:Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .local v0, _arg0:Ljava/util/Map;
    invoke-virtual {p0, v0}, Landroid/content/res/IThemeService$Stub;->requestThemeChange(Ljava/util/Map;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Ljava/util/Map;
    .end local v3           #cl:Ljava/lang/ClassLoader;
    :sswitch_4
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->applyDefaultTheme()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v6, "android.content.res.IThemeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->isThemeApplying()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:Z
    :sswitch_6
    const-string v4, "android.content.res.IThemeService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/IThemeService$Stub;->getProgress()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:I
    :sswitch_7
    const-string v6, "android.content.res.IThemeService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .local v0, _arg0:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/content/res/IThemeService$Stub;->cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/graphics/Bitmap;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_result:Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
