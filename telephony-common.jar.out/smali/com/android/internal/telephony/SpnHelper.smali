.class public final Lcom/android/internal/telephony/SpnHelper;
.super Ljava/lang/Object;
.source "SpnHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SpnHelper$MncEntry;
    }
.end annotation


# static fields
.field static table:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SpnHelper$MncEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, #android:string@china_unicom#t

    const v4, #android:string@china_telecom#t

    const v3, #android:string@china_mobile#t

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b3

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b5

    invoke-direct {v1, v2, v4}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b1

    invoke-direct {v1, v2, v5}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b6

    invoke-direct {v1, v2, v5}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b2

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const v2, 0xb3b7

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static entryForMccmnc(I)Lcom/android/internal/telephony/SpnHelper$MncEntry;
    .locals 3
    .parameter "mccmnc"

    .prologue
    new-instance v1, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/SpnHelper$MncEntry;-><init>(II)V

    .local v1, m:Lcom/android/internal/telephony/SpnHelper$MncEntry;
    sget-object v2, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SpnHelper;->table:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SpnHelper$MncEntry;

    goto :goto_0
.end method

.method public static resourceIdForMnc(I)I
    .locals 2
    .parameter "mccmnc"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/SpnHelper;->entryForMccmnc(I)Lcom/android/internal/telephony/SpnHelper$MncEntry;

    move-result-object v0

    .local v0, entry:Lcom/android/internal/telephony/SpnHelper$MncEntry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/android/internal/telephony/SpnHelper$MncEntry;->res:I

    goto :goto_0
.end method
