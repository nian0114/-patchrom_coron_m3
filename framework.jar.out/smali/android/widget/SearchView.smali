.class public Landroid/widget/SearchView;
.super Landroid/widget/LinearLayout;
.source "SearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SearchView$SearchAutoComplete;,
        Landroid/widget/SearchView$OnSuggestionListener;,
        Landroid/widget/SearchView$OnCloseListener;,
        Landroid/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v7, Landroid/widget/SearchView$1;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$1;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v7, Landroid/widget/SearchView$2;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$2;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    new-instance v7, Landroid/widget/SearchView$3;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$3;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v7, Landroid/widget/SearchView$6;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$6;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v7, Landroid/widget/SearchView$7;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$7;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v7, Landroid/widget/SearchView$8;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$8;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v7, Landroid/widget/SearchView$9;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$9;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v7, Landroid/widget/SearchView$10;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$10;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v7, Landroid/widget/SearchView$11;

    invoke-direct {v7, p0}, Landroid/widget/SearchView$11;-><init>(Landroid/widget/SearchView;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x1090099

    invoke-virtual {v3, v7, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v7, 0x1020322

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    const v7, 0x1020326

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Landroid/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/widget/SearchView;)V

    const v7, 0x1020323

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    const v7, 0x1020325

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    const v7, 0x1020328

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    const v7, 0x1020329

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    const v7, 0x1020327

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    const v7, 0x102032a

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    const v7, 0x1020324

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    new-instance v8, Landroid/widget/SearchView$4;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$4;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .local v5, maxWidth:I
    if-eq v5, v9, :cond_0

    invoke-virtual {p0, v5}, Landroid/widget/SearchView;->setMaxWidth(I)V

    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, queryHint:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .local v2, imeOptions:I
    if-eq v2, v9, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/SearchView;->setImeOptions(I)V

    :cond_2
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .local v4, inputType:I
    if-eq v4, v9, :cond_3

    invoke-virtual {p0, v4}, Landroid/widget/SearchView;->setInputType(I)V

    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v1, 0x1

    .local v1, focusable:Z
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v7, 0x12

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->setFocusable(Z)V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Landroid/widget/SearchView$5;

    invoke-direct {v8, p0}, Landroid/widget/SearchView$5;-><init>(Landroid/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_4
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/SearchView;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/SearchView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/SearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/SearchView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/SearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/SearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 9

    .prologue
    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, res:Landroid/content/res/Resources;
    iget-object v7, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .local v0, anchorPadding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, dropDownPadding:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/SearchView;->isLayoutRtl()Z

    move-result v3

    .local v3, isLayoutRtl:Z
    iget-boolean v7, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v7, :cond_1

    const v7, 0x105004d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x105004b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    .local v2, iconOffset:I
    :goto_0
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_2

    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    .local v4, offset:I
    :goto_1
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    iget-object v7, p0, Landroid/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .local v6, width:I
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .end local v0           #anchorPadding:I
    .end local v1           #dropDownPadding:Landroid/graphics/Rect;
    .end local v2           #iconOffset:I
    .end local v3           #isLayoutRtl:Z
    .end local v4           #offset:I
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #width:I
    :cond_0
    return-void

    .restart local v0       #anchorPadding:I
    .restart local v1       #dropDownPadding:Landroid/graphics/Rect;
    .restart local v3       #isLayoutRtl:Z
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2       #iconOffset:I
    :cond_2
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    .restart local v4       #offset:I
    goto :goto_1
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    const-string v1, "app_data"

    iget-object v2, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_2

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    :cond_2
    if-eqz v7, :cond_3

    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, id:Ljava/lang/String;
    if-eqz v10, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v10           #id:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .local v2, dataUri:Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, query:Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .end local v1           #action:Ljava/lang/String;
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v1       #action:Ljava/lang/String;
    .restart local v7       #data:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #action:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :catch_0
    move-exception v8

    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .local v11, rowNum:I
    :goto_2
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_1

    .end local v11           #rowNum:I
    :catch_1
    move-exception v9

    .local v9, e2:Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11       #rowNum:I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, queryExtras:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    const-string v10, "app_data"

    iget-object v11, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, maxResults:I
    invoke-virtual {p0}, Landroid/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v9

    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doBeforeTextChanged()V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->doAfterTextChanged()V

    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "actionKey"

    .prologue
    const/4 v1, 0x0

    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "hintText"

    .prologue
    const/4 v7, 0x0

    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-nez v3, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/SearchView;->getSearchIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, searchIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .local v2, textSize:I
    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010417

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_1
    return v2

    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "actionKey"
    .parameter "actionMsg"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    iget-object v2, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, p2, p3}, Landroid/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    const/4 v2, 0x1

    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    invoke-interface {v1}, Landroid/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .local v0, query:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    :cond_1
    invoke-direct {p0}, Landroid/widget/SearchView;->dismissSuggestions()V

    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    :cond_2
    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .local v3, position:I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .end local v3           #position:I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .local v4, selPoint:I
    :goto_1
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Landroid/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    goto :goto_0

    .end local v4           #selPoint:I
    :cond_5
    iget-object v7, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    iget-object v6, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    :cond_8
    iget-object v6, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .restart local v3       #position:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    iget-object v6, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v2, v0}, Landroid/widget/SearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-direct {p0, v3, p2, v1}, Landroid/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "newText"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .local v1, text:Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .local v0, hasText:Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void

    .end local v0           #hasText:Z
    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    .local v2, searchable:Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .local v3, webSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .local v0, appSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .parameter "position"

    .prologue
    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .local v2, oldQuery:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    if-eqz p1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "query"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .local v0, hasText:Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v3, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_2

    .local v1, showClose:Z
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v0, :cond_4

    sget-object v2, Landroid/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void

    .end local v0           #hasText:Z
    .end local v1           #showClose:Z
    :cond_1
    move v0, v2

    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v1, v2

    goto :goto_1

    .restart local v1       #showClose:Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    :cond_4
    sget-object v2, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .local v0, focused:Z
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v1, Landroid/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/widget/SearchView;->invalidate()V

    return-void

    :cond_0
    sget-object v1, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .local v1, hintId:I
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_3
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Landroid/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    const/16 v0, 0x8

    .local v0, visibility:I
    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .parameter "hasText"

    .prologue
    const/16 v0, 0x8

    .local v0, visibility:I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .parameter "collapsed"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconified:Z

    if-eqz p1, :cond_0

    move v1, v2

    .local v1, visCollapsed:I
    :goto_0
    iget-object v5, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .local v0, hasText:Z
    :goto_1
    iget-object v5, p0, Landroid/widget/SearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateSubmitButton(Z)V

    iget-object v6, p0, Landroid/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Landroid/widget/SearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateCloseButton()V

    if-nez v0, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateSubmitArea()V

    return-void

    .end local v0           #hasText:Z
    .end local v1           #visCollapsed:I
    :cond_0
    move v1, v3

    goto :goto_0

    .restart local v1       #visCollapsed:I
    :cond_1
    move v0, v2

    goto :goto_1

    .restart local v0       #hasText:Z
    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    move v4, v2

    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    const/16 v0, 0x8

    .local v0, visibility:I
    iget-boolean v1, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/SearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    invoke-direct {p0, v1}, Landroid/widget/SearchView;->setImeVisibility(Z)V

    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iput-boolean v1, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .local v1, hintId:I
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iput-boolean v2, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView;->mExpandedInActionView:Z

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .local v0, width:I
    sparse-switch v1, :sswitch_data_0

    :cond_1
    :goto_1
    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    :sswitch_0
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_1
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    :sswitch_2
    iget v2, p0, Landroid/widget/SearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Landroid/widget/SearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/widget/SearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryText"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setLayoutDirection(I)V

    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SearchView;->forceSuggestionQuery()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/widget/SearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .local v0, result:Z
    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .parameter "iconify"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/SearchView;->onCloseClicked()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter "iconified"

    .prologue
    iget-boolean v0, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Landroid/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxpixels"

    .prologue
    iput p1, p0, Landroid/widget/SearchView;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/widget/SearchView$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mOnCloseListener:Landroid/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mOnQueryChangeListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/SearchView$OnSuggestionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mOnSuggestionListener:Landroid/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "query"
    .parameter "submit"

    .prologue
    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object p1, p0, Landroid/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/widget/SearchView;->onSubmitQuery()V

    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    iput-boolean p1, p0, Landroid/widget/SearchView;->mQueryRefinement:Z

    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .parameter "searchable"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v0, p0, Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/widget/SearchView;->updateSearchAutoComplete()V

    invoke-direct {p0}, Landroid/widget/SearchView;->updateQueryHint()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    iget-boolean v0, p0, Landroid/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Landroid/widget/SearchView;->mSubmitButtonEnabled:Z

    invoke-virtual {p0}, Landroid/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    iput-object p1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    iget-object v0, p0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/SearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
