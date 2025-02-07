.class public Landroid/app/IconPackHelper$ColorFilterUtils;
.super Ljava/lang/Object;
.source "IconPackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IconPackHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ColorFilterUtils"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    }
.end annotation


# static fields
.field private static final FILTER_ALPHA:Ljava/lang/String; = "alpha"

.field private static final FILTER_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final FILTER_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final FILTER_HUE:Ljava/lang/String; = "hue"

.field private static final FILTER_INVERT:Ljava/lang/String; = "invert"

.field private static final FILTER_SATURATION:Ljava/lang/String; = "saturation"

.field private static final FILTER_TINT:Ljava/lang/String; = "tint"

.field private static final MAX_ALPHA:I = 0x64

.field private static final MAX_BRIGHTNESS:I = 0xc8

.field private static final MAX_CONTRAST:I = 0x64

.field private static final MAX_HUE:I = 0xb4

.field private static final MAX_SATURATION:I = 0xc8

.field private static final MIN_ALPHA:I = 0x0

.field private static final MIN_BRIGHTNESS:I = 0x0

.field private static final MIN_CONTRAST:I = -0x64

.field private static final MIN_HUE:I = -0xb4

.field private static final MIN_SATURATION:I = 0x0

.field private static final TAG_FILTER:Ljava/lang/String; = "filter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustAlpha(F)Landroid/graphics/ColorMatrix;
    .locals 3
    .parameter "alpha"

    .prologue
    const/high16 v2, 0x3f80

    const/high16 v1, 0x42c8

    div-float/2addr p0, v1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v0, cm:Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, v2, v2, v2, p0}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-object v0
.end method

.method public static adjustBrightness(F)Landroid/graphics/ColorMatrix;
    .locals 2
    .parameter "brightness"

    .prologue
    const/high16 v1, 0x42c8

    div-float/2addr p0, v1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v0, cm:Landroid/graphics/ColorMatrix;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, p0, p0, p0, v1}, Landroid/graphics/ColorMatrix;->setScale(FFFF)V

    return-object v0
.end method

.method public static adjustContrast(F)Landroid/graphics/ColorMatrix;
    .locals 6
    .parameter "contrast"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/high16 v2, 0x42c8

    div-float v2, p0, v2

    add-float p0, v2, v5

    const/high16 v2, -0x4100

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    const/high16 v3, 0x437f

    mul-float v1, v2, v3

    .local v1, o:F
    const/16 v2, 0x14

    new-array v0, v2, [F

    const/4 v2, 0x0

    aput p0, v0, v2

    const/4 v2, 0x1

    aput v4, v0, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    const/4 v2, 0x3

    aput v4, v0, v2

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v2, 0x5

    aput v4, v0, v2

    const/4 v2, 0x6

    aput p0, v0, v2

    const/4 v2, 0x7

    aput v4, v0, v2

    const/16 v2, 0x8

    aput v4, v0, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    const/16 v2, 0xa

    aput v4, v0, v2

    const/16 v2, 0xb

    aput v4, v0, v2

    const/16 v2, 0xc

    aput p0, v0, v2

    const/16 v2, 0xd

    aput v4, v0, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    const/16 v2, 0xf

    aput v4, v0, v2

    const/16 v2, 0x10

    aput v4, v0, v2

    const/16 v2, 0x11

    aput v4, v0, v2

    const/16 v2, 0x12

    aput v5, v0, v2

    const/16 v2, 0x13

    aput v4, v0, v2

    .local v0, matrix:[F
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v2
.end method

.method public static adjustHue(F)Landroid/graphics/ColorMatrix;
    .locals 12
    .parameter "value"

    .prologue
    const/high16 v11, 0x3f80

    const/4 v10, 0x0

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v0, cm:Landroid/graphics/ColorMatrix;
    const/high16 v7, 0x4334

    div-float v7, p0, v7

    const v8, 0x40490fdb

    mul-float p0, v7, v8

    cmpl-float v7, p0, v10

    if-eqz v7, :cond_0

    float-to-double v7, p0

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v1, v7

    .local v1, cosVal:F
    float-to-double v7, p0

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v6, v7

    .local v6, sinVal:F
    const v4, 0x3e5a1cac

    .local v4, lumR:F
    const v3, 0x3f370a3d

    .local v3, lumG:F
    const v2, 0x3d9374bc

    .local v2, lumB:F
    const/16 v7, 0x19

    new-array v5, v7, [F

    const/4 v7, 0x0

    sub-float v8, v11, v4

    mul-float/2addr v8, v1

    add-float/2addr v8, v4

    neg-float v9, v4

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v7, 0x1

    neg-float v8, v3

    mul-float/2addr v8, v1

    add-float/2addr v8, v3

    neg-float v9, v3

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v7, 0x2

    neg-float v8, v2

    mul-float/2addr v8, v1

    add-float/2addr v8, v2

    sub-float v9, v11, v2

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v7, 0x3

    aput v10, v5, v7

    const/4 v7, 0x4

    aput v10, v5, v7

    const/4 v7, 0x5

    neg-float v8, v4

    mul-float/2addr v8, v1

    add-float/2addr v8, v4

    const v9, 0x3e126e98

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v7, 0x6

    sub-float v8, v11, v3

    mul-float/2addr v8, v1

    add-float/2addr v8, v3

    const v9, 0x3e0f5c29

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/4 v7, 0x7

    neg-float v8, v2

    mul-float/2addr v8, v1

    add-float/2addr v8, v2

    const v9, -0x416f1aa0

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/16 v7, 0x8

    aput v10, v5, v7

    const/16 v7, 0x9

    aput v10, v5, v7

    const/16 v7, 0xa

    neg-float v8, v4

    mul-float/2addr v8, v1

    add-float/2addr v8, v4

    sub-float v9, v11, v4

    neg-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/16 v7, 0xb

    neg-float v8, v3

    mul-float/2addr v8, v1

    add-float/2addr v8, v3

    mul-float v9, v6, v3

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/16 v7, 0xc

    sub-float v8, v11, v2

    mul-float/2addr v8, v1

    add-float/2addr v8, v2

    mul-float v9, v6, v2

    add-float/2addr v8, v9

    aput v8, v5, v7

    const/16 v7, 0xd

    aput v10, v5, v7

    const/16 v7, 0xe

    aput v10, v5, v7

    const/16 v7, 0xf

    aput v10, v5, v7

    const/16 v7, 0x10

    aput v10, v5, v7

    const/16 v7, 0x11

    aput v10, v5, v7

    const/16 v7, 0x12

    aput v11, v5, v7

    const/16 v7, 0x13

    aput v10, v5, v7

    const/16 v7, 0x14

    aput v10, v5, v7

    const/16 v7, 0x15

    aput v10, v5, v7

    const/16 v7, 0x16

    aput v10, v5, v7

    const/16 v7, 0x17

    aput v10, v5, v7

    const/16 v7, 0x18

    aput v11, v5, v7

    .local v5, mat:[F
    invoke-virtual {v0, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    .end local v1           #cosVal:F
    .end local v2           #lumB:F
    .end local v3           #lumG:F
    .end local v4           #lumR:F
    .end local v5           #mat:[F
    .end local v6           #sinVal:F
    :cond_0
    return-object v0
.end method

.method public static adjustSaturation(F)Landroid/graphics/ColorMatrix;
    .locals 2
    .parameter "saturation"

    .prologue
    const/high16 v1, 0x42c8

    div-float/2addr p0, v1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .local v0, cm:Landroid/graphics/ColorMatrix;
    invoke-virtual {v0, p0}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    return-object v0
.end method

.method public static applyTint(I)Landroid/graphics/ColorMatrix;
    .locals 9
    .parameter "color"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x437f

    div-float v0, v5, v6

    .local v0, alpha:F
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v5, v0

    .local v4, red:F
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v2, v5, v0

    .local v2, green:F
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float v1, v5, v0

    .local v1, blue:F
    const/16 v5, 0x14

    new-array v3, v5, [F

    const/4 v5, 0x0

    aput v8, v3, v5

    const/4 v5, 0x1

    aput v7, v3, v5

    const/4 v5, 0x2

    aput v7, v3, v5

    const/4 v5, 0x3

    aput v7, v3, v5

    const/4 v5, 0x4

    aput v4, v3, v5

    const/4 v5, 0x5

    aput v7, v3, v5

    const/4 v5, 0x6

    aput v8, v3, v5

    const/4 v5, 0x7

    aput v7, v3, v5

    const/16 v5, 0x8

    aput v7, v3, v5

    const/16 v5, 0x9

    aput v2, v3, v5

    const/16 v5, 0xa

    aput v7, v3, v5

    const/16 v5, 0xb

    aput v7, v3, v5

    const/16 v5, 0xc

    aput v8, v3, v5

    const/16 v5, 0xd

    aput v7, v3, v5

    const/16 v5, 0xe

    aput v1, v3, v5

    const/16 v5, 0xf

    aput v7, v3, v5

    const/16 v5, 0x10

    aput v7, v3, v5

    const/16 v5, 0x11

    aput v7, v3, v5

    const/16 v5, 0x12

    aput v8, v3, v5

    const/16 v5, 0x13

    aput v7, v3, v5

    .local v3, matrix:[F
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v5
.end method

.method private static clampValue(III)I
    .locals 1
    .parameter "value"
    .parameter "min"
    .parameter "max"

    .prologue
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private static getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "value"
    .parameter "defaultValue"

    .prologue
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static invertColors()Landroid/graphics/ColorMatrix;
    .locals 2

    .prologue
    const/16 v1, 0x14

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    .local v0, matrix:[F
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrix;-><init>([F)V

    return-object v1

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x7ft 0x43t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static parseIconFilter(Lorg/xmlpull/v1/XmlPullParser;Landroid/app/IconPackHelper$ColorFilterUtils$Builder;)Z
    .locals 12
    .parameter "parser"
    .parameter "builder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/16 v11, 0xc8

    const/16 v10, 0x64

    const/4 v8, 0x0

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .local v7, tag:Ljava/lang/String;
    const-string v9, "filter"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :goto_0
    return v8

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .local v1, attrCount:I
    const/4 v0, 0x0

    .local v0, attr:Ljava/lang/String;
    move v2, v1

    .end local v1           #attrCount:I
    .local v2, attrCount:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #attrCount:I
    .restart local v1       #attrCount:I
    if-lez v2, :cond_1

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .local v3, attrName:Ljava/lang/String;
    const-string v9, "name"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    move v2, v1

    .end local v1           #attrCount:I
    .restart local v2       #attrCount:I
    goto :goto_1

    .end local v2           #attrCount:I
    .end local v3           #attrName:Ljava/lang/String;
    .restart local v1       #attrCount:I
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    .local v4, content:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v9, "hue"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v4, v8}, Landroid/app/IconPackHelper$ColorFilterUtils;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, -0xb4

    const/16 v10, 0xb4

    invoke-static {v8, v9, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->clampValue(III)I

    move-result v6

    .local v6, intValue:I
    int-to-float v8, v6

    invoke-virtual {p1, v8}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->hue(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    .end local v6           #intValue:I
    :cond_2
    :goto_2
    const/4 v8, 0x1

    goto :goto_0

    :cond_3
    const-string v9, "saturation"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {v4, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v8, v11}, Landroid/app/IconPackHelper$ColorFilterUtils;->clampValue(III)I

    move-result v6

    .restart local v6       #intValue:I
    int-to-float v8, v6

    invoke-virtual {p1, v8}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->saturate(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    goto :goto_2

    .end local v6           #intValue:I
    :cond_4
    const-string v9, "invert"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v8, "true"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->invertColors()Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    goto :goto_2

    :cond_5
    const-string v9, "brightness"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v4, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v8, v11}, Landroid/app/IconPackHelper$ColorFilterUtils;->clampValue(III)I

    move-result v6

    .restart local v6       #intValue:I
    int-to-float v8, v6

    invoke-virtual {p1, v8}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->brightness(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    goto :goto_2

    .end local v6           #intValue:I
    :cond_6
    const-string v9, "contrast"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v4, v8}, Landroid/app/IconPackHelper$ColorFilterUtils;->getInt(Ljava/lang/String;I)I

    move-result v8

    const/16 v9, -0x64

    invoke-static {v8, v9, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->clampValue(III)I

    move-result v6

    .restart local v6       #intValue:I
    int-to-float v8, v6

    invoke-virtual {p1, v8}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->contrast(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    goto :goto_2

    .end local v6           #intValue:I
    :cond_7
    const-string v9, "alpha"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v4, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9, v8, v10}, Landroid/app/IconPackHelper$ColorFilterUtils;->clampValue(III)I

    move-result v6

    .restart local v6       #intValue:I
    int-to-float v8, v6

    invoke-virtual {p1, v8}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->alpha(F)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;

    goto :goto_2

    .end local v6           #intValue:I
    :cond_8
    const-string v8, "tint"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    :try_start_0
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    .restart local v6       #intValue:I
    invoke-virtual {p1, v6}, Landroid/app/IconPackHelper$ColorFilterUtils$Builder;->tint(I)Landroid/app/IconPackHelper$ColorFilterUtils$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v6           #intValue:I
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/app/IconPackHelper;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot apply tint, invalid argument: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v4           #content:Ljava/lang/String;
    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    .restart local v3       #attrName:Ljava/lang/String;
    :cond_9
    move v2, v1

    .end local v1           #attrCount:I
    .restart local v2       #attrCount:I
    goto/16 :goto_1
.end method
