.class public Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper$ColorFilterUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mMatrixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/ColorMatrix;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public alpha(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "alpha"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->adjustAlpha(F)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public brightness(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "brightness"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->adjustBrightness(F)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/graphics/ColorMatrix;
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1

    :cond_2
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v1, colorMatrix:Landroid/graphics/ColorMatrix;
    iget-object v3, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorMatrix;

    .local v0, cm:Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_0
.end method

.method public contrast(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "contrast"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->adjustContrast(F)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public hue(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "value"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->adjustHue(F)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public invertColors()Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {}, Landroid/app/IconPackHelper$ColorFilterUtils;->invertColors()Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public saturate(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "saturation"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->adjustSaturation(F)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public tint(I)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    .locals 2
    .parameter "color"

    .prologue
    iget-object v0, p0, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->mMatrixList:Ljava/util/List;

    invoke-static {p1}, Landroid/app/IconPackHelper$ColorFilterUtils;->applyTint(I)Landroid/graphics/ColorMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
