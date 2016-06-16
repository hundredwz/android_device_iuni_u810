.class public Lcom/android/internal/app/GnAlertController$AlertParams;
.super Ljava/lang/Object;
.source "GnAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/GnAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIconId:I

    .line 754
    iput-boolean v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 758
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItem:I

    .line 766
    iput-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 782
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 783
    iput-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCancelable:Z

    .line 784
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 785
    return-void
.end method

.method private createListView(Lcom/android/internal/app/GnAlertController;)V
    .locals 10
    .param p1, "dialog"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 843
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x10900cc

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/GnAlertController$RecycleListView;

    .line 847
    .local v6, "listView":Lcom/android/internal/app/GnAlertController$RecycleListView;
    iget-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5

    .line 848
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    .line 849
    new-instance v0, Lcom/android/internal/app/GnAlertController$AlertParams$1;

    iget-object v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mContext:Landroid/content/Context;

    const v3, 0x1090013

    iget-object v5, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/GnAlertController$AlertParams$1;-><init>(Lcom/android/internal/app/GnAlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/GnAlertController$RecycleListView;)V

    .line 902
    .local v0, "adapter":Landroid/widget/ListAdapter;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_0

    .line 903
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 909
    :cond_0
    # setter for: Lcom/android/internal/app/GnAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {p1, v0}, Lcom/android/internal/app/GnAlertController;->access$802(Lcom/android/internal/app/GnAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 910
    iget v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItem:I

    # setter for: Lcom/android/internal/app/GnAlertController;->mCheckedItem:I
    invoke-static {p1, v1}, Lcom/android/internal/app/GnAlertController;->access$902(Lcom/android/internal/app/GnAlertController;I)I

    .line 912
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_9

    .line 913
    new-instance v1, Lcom/android/internal/app/GnAlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/GnAlertController$AlertParams$3;-><init>(Lcom/android/internal/app/GnAlertController$AlertParams;Lcom/android/internal/app/GnAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 934
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_2

    .line 935
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 938
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a

    .line 939
    invoke-virtual {v6, v9}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 943
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v1, v6, Lcom/android/internal/app/GnAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 944
    # setter for: Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {p1, v6}, Lcom/android/internal/app/GnAlertController;->access$1002(Lcom/android/internal/app/GnAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 945
    return-void

    .line 864
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_4
    new-instance v0, Lcom/android/internal/app/GnAlertController$AlertParams$2;

    iget-object v3, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/GnAlertController$AlertParams$2;-><init>(Lcom/android/internal/app/GnAlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/android/internal/app/GnAlertController$RecycleListView;)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 891
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_5
    iget-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_6

    const v2, 0x109009d

    .line 893
    .local v2, "layout":I
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_8

    .line 894
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :goto_4
    goto :goto_0

    .line 891
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "layout":I
    :cond_6
    const v2, 0x1090011

    goto :goto_3

    .line 894
    .restart local v2    # "layout":I
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    goto :goto_4

    .line 897
    :cond_8
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_0

    .line 921
    .end local v2    # "layout":I
    :cond_9
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_1

    .line 922
    new-instance v1, Lcom/android/internal/app/GnAlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Lcom/android/internal/app/GnAlertController$AlertParams$4;-><init>(Lcom/android/internal/app/GnAlertController$AlertParams;Lcom/android/internal/app/GnAlertController$RecycleListView;Lcom/android/internal/app/GnAlertController;)V

    invoke-virtual {v6, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    .line 940
    :cond_a
    iget-boolean v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    .line 941
    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/GnAlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    const/4 v3, 0x0

    .line 788
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 789
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 801
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 802
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 805
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/GnAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 809
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/GnAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 812
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 813
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/app/GnAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 816
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 817
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setInverseBackgroundForced(Z)V

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 822
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/internal/app/GnAlertController$AlertParams;->createListView(Lcom/android/internal/app/GnAlertController;)V

    .line 824
    :cond_7
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 825
    iget-boolean v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_c

    .line 826
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/GnAlertController;->setView(Landroid/view/View;IIII)V

    .line 840
    :cond_8
    :goto_1
    return-void

    .line 791
    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_a

    .line 792
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 794
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_b

    .line 795
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 797
    :cond_b
    iget v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIconId:I

    if-ltz v0, :cond_0

    .line 798
    iget v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setIcon(I)V

    goto :goto_0

    .line 829
    :cond_c
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/internal/app/GnAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
