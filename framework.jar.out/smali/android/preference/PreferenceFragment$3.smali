.class Landroid/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceFragment;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->access$000(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    .local v0, selectedItem:Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/preference/PreferenceFragment$3;->this$0:Landroid/preference/PreferenceFragment;

    #getter for: Landroid/preference/PreferenceFragment;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Landroid/preference/PreferenceFragment;->access$000(Landroid/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .local v1, selectedView:Landroid/view/View;
    check-cast v0, Landroid/preference/Preference;

    .end local v0           #selectedItem:Ljava/lang/Object;
    invoke-virtual {v0, v1, p2, p3}, Landroid/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .end local v1           #selectedView:Landroid/view/View;
    :goto_0
    return v2

    .restart local v0       #selectedItem:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
