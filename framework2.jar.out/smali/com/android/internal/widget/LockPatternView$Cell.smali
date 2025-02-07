.class public Lcom/android/internal/widget/LockPatternView$Cell;
.super Ljava/lang/Object;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# static fields
.field static sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;


# instance fields
.field column:I

.field row:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->updateSize(B)V

    return-void
.end method

.method private constructor <init>(IIB)V
    .locals 0
    .parameter "row"
    .parameter "column"
    .parameter "size"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    iput p1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iput p2, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return-void
.end method

.method private static checkRange(IIB)V
    .locals 3
    .parameter "row"
    .parameter "column"
    .parameter "size"

    .prologue
    if-ltz p0, :cond_0

    add-int/lit8 v0, p2, -0x1

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p1, :cond_2

    add-int/lit8 v0, p2, -0x1

    if-le p1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "column must be in range 0-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public static declared-synchronized of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 2
    .parameter "row"
    .parameter "column"
    .parameter "size"

    .prologue
    const-class v1, Lcom/android/internal/widget/LockPatternView$Cell;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$Cell;->checkRange(IIB)V

    sget-object v0, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v0, v0, p0

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static updateSize(B)V
    .locals 4
    .parameter "size"

    .prologue
    filled-new-array {p0, p0}, [I

    move-result-object v2

    const-class v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/internal/widget/LockPatternView$Cell;

    sput-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p0, :cond_1

    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    if-ge v1, p0, :cond_0

    sget-object v2, Lcom/android/internal/widget/LockPatternView$Cell;->sCells:[[Lcom/android/internal/widget/LockPatternView$Cell;

    aget-object v2, v2, v0

    new-instance v3, Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-direct {v3, v0, v1, p0}, Lcom/android/internal/widget/LockPatternView$Cell;-><init>(IIB)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #j:I
    :cond_1
    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    return v0
.end method

.method public getRow()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",clmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized of(II)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(IIB)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    return-object v0
.end method
