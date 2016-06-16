.class public Lcom/android/internal/app/GnAlertController;
.super Ljava/lang/Object;
.source "GnAlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/GnAlertController$AlertParams;,
        Lcom/android/internal/app/GnAlertController$RecycleListView;,
        Lcom/android/internal/app/GnAlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GnAlertController"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v1, -0x1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingSpecified:Z

    .line 134
    iput v1, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    .line 150
    iput v1, p0, Lcom/android/internal/app/GnAlertController;->mCheckedItem:I

    .line 154
    new-instance v0, Lcom/android/internal/app/GnAlertController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/GnAlertController$1;-><init>(Lcom/android/internal/app/GnAlertController;)V

    iput-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 201
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mContext:Landroid/content/Context;

    .line 202
    iput-object p2, p0, Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 203
    iput-object p3, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    .line 204
    new-instance v0, Lcom/android/internal/app/GnAlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/android/internal/app/GnAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/android/internal/app/GnAlertController;->mHandler:Landroid/os/Handler;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/app/GnAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/app/GnAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/GnAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/app/GnAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/internal/app/GnAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/GnAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/internal/app/GnAlertController;->mCheckedItem:I

    return p1
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    :goto_0
    return v2

    .line 212
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 213
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 216
    check-cast v1, Landroid/view/ViewGroup;

    .line 217
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 218
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 219
    add-int/lit8 v0, v0, -0x1

    .line 220
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 221
    invoke-static {p0}, Lcom/android/internal/app/GnAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 226
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 568
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 569
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 570
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v3, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020273

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 573
    .local v0, "leftSpacer":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 574
    iget-object v3, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020274

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 575
    .local v2, "rightSpacer":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 576
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 22
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 583
    const/16 v19, 0x0

    const v20, 0x10804b5

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 585
    .local v9, "fullDark":I
    const/16 v19, 0x1

    const v20, 0x10804c3

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    .line 587
    .local v16, "topDark":I
    const/16 v19, 0x2

    const v20, 0x10804b2

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 589
    .local v7, "centerDark":I
    const/16 v19, 0x3

    const v20, 0x10804af

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 591
    .local v4, "bottomDark":I
    const/16 v19, 0x4

    const v20, 0x10804b4

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 593
    .local v8, "fullBright":I
    const/16 v19, 0x5

    const v20, 0x10804c2

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 595
    .local v15, "topBright":I
    const/16 v19, 0x6

    const v20, 0x10804b1

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 597
    .local v6, "centerBright":I
    const/16 v19, 0x7

    const v20, 0x10804ae

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 599
    .local v3, "bottomBright":I
    const/16 v19, 0x8

    const v20, 0x10804b0

    move-object/from16 v0, p5

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 611
    .local v5, "bottomMedium":I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v18, v0

    .line 612
    .local v18, "views":[Landroid/view/View;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v12, v0, [Z

    .line 613
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 614
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 616
    .local v10, "lastLight":Z
    const/4 v13, 0x0

    .line 617
    .local v13, "pos":I
    if-eqz p6, :cond_0

    .line 618
    aput-object p1, v18, v13

    .line 619
    const/16 v19, 0x0

    aput-boolean v19, v12, v13

    .line 620
    add-int/lit8 v13, v13, 0x1

    .line 628
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_1
    aput-object p2, v18, v13

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    const/16 v19, 0x1

    :goto_0
    aput-boolean v19, v12, v13

    .line 631
    add-int/lit8 v13, v13, 0x1

    .line 632
    if-eqz p3, :cond_2

    .line 633
    aput-object p3, v18, v13

    .line 634
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/app/GnAlertController;->mForceInverseBackground:Z

    move/from16 v19, v0

    aput-boolean v19, v12, v13

    .line 635
    add-int/lit8 v13, v13, 0x1

    .line 637
    :cond_2
    if-eqz p4, :cond_3

    .line 638
    aput-object p7, v18, v13

    .line 639
    const/16 v19, 0x1

    aput-boolean v19, v12, v13

    .line 642
    :cond_3
    const/4 v14, 0x0

    .line 643
    .local v14, "setView":Z
    const/4 v13, 0x0

    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v13, v0, :cond_a

    .line 644
    aget-object v17, v18, v13

    .line 645
    .local v17, "v":Landroid/view/View;
    if-nez v17, :cond_5

    .line 643
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 630
    .end local v14    # "setView":Z
    .end local v17    # "v":Landroid/view/View;
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 648
    .restart local v14    # "setView":Z
    .restart local v17    # "v":Landroid/view/View;
    :cond_5
    if-eqz v11, :cond_6

    .line 649
    if-nez v14, :cond_8

    .line 650
    if-eqz v10, :cond_7

    move/from16 v19, v15

    :goto_3
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 654
    :goto_4
    const/4 v14, 0x1

    .line 656
    :cond_6
    move-object/from16 v11, v17

    .line 657
    aget-boolean v10, v12, v13

    goto :goto_2

    :cond_7
    move/from16 v19, v16

    .line 650
    goto :goto_3

    .line 652
    :cond_8
    if-eqz v10, :cond_9

    move/from16 v19, v6

    :goto_5
    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_9
    move/from16 v19, v7

    goto :goto_5

    .line 660
    .end local v17    # "v":Landroid/view/View;
    :cond_a
    if-eqz v11, :cond_b

    .line 661
    if-eqz v14, :cond_f

    .line 666
    if-eqz v10, :cond_e

    if-eqz p4, :cond_d

    .end local v5    # "bottomMedium":I
    :goto_6
    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 698
    .end local v8    # "fullBright":I
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v19, v0

    if-eqz v19, :cond_c

    .line 699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 700
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/GnAlertController;->mCheckedItem:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_c

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/GnAlertController;->mCheckedItem:I

    move/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/GnAlertController;->mCheckedItem:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ListView;->setSelection(I)V

    .line 705
    :cond_c
    return-void

    .restart local v5    # "bottomMedium":I
    .restart local v8    # "fullBright":I
    :cond_d
    move v5, v3

    .line 666
    goto :goto_6

    :cond_e
    move v5, v4

    goto :goto_6

    .line 669
    :cond_f
    if-eqz v10, :cond_10

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    .restart local v8    # "fullBright":I
    :cond_10
    move v8, v9

    goto :goto_8
.end method

.method private setupButtons()Z
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x0

    .line 508
    const/4 v2, 0x1

    .line 509
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 510
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 511
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v3, 0x0

    .line 514
    .local v3, "whichButtons":I
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 516
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020019

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 529
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 532
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 540
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102001b

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 541
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 544
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 556
    :goto_2
    if-ne v3, v2, :cond_4

    .line 557
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/GnAlertController;->centerButton(Landroid/widget/Button;)V

    .line 564
    :cond_0
    :goto_3
    if-eqz v3, :cond_6

    const/4 v4, 0x1

    :goto_4
    return v4

    .line 521
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 523
    or-int/2addr v3, v2

    goto :goto_0

    .line 534
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 537
    or-int/2addr v3, v0

    goto :goto_1

    .line 546
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 549
    or-int/2addr v3, v1

    goto :goto_2

    .line 558
    :cond_4
    if-ne v3, v0, :cond_5

    .line 559
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/GnAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 560
    :cond_5
    if-ne v3, v1, :cond_0

    .line 561
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lcom/android/internal/app/GnAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    :cond_6
    move v4, v5

    .line 564
    goto :goto_4
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const v5, 0x1020276

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    .line 486
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 496
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 498
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 502
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 10
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/16 v9, 0x8

    .line 425
    const/4 v1, 0x1

    .line 427
    .local v1, "hasTitle":Z
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 429
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 432
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x102026f

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 436
    .local v3, "titleTemplate":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 477
    .end local v2    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "titleTemplate":Landroid/view/View;
    :cond_0
    :goto_0
    return v1

    .line 438
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v0, 0x1

    .line 440
    .local v0, "hasTextTitle":Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    .line 441
    if-eqz v0, :cond_5

    .line 442
    const-string v4, "GnAlertController"

    const-string v5, "hasTextTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v5, 0x1020270

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/app/GnAlertController;->mTitleView:Landroid/widget/TextView;

    .line 446
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/GnAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget v4, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    if-lez v4, :cond_3

    .line 453
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 438
    .end local v0    # "hasTextTitle":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 454
    .restart local v0    # "hasTextTitle":Z
    :cond_3
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    .line 455
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/app/GnAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 456
    :cond_4
    iget v4, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    if-nez v4, :cond_0

    .line 461
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 465
    iget-object v4, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 468
    :cond_5
    const-string v4, "GnAlertController"

    const-string v5, "hasTitle = false"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupView()V
    .locals 14

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020275

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 381
    .local v2, "contentPanel":Landroid/widget/LinearLayout;
    invoke-direct {p0, v2}, Lcom/android/internal/app/GnAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 382
    invoke-direct {p0}, Lcom/android/internal/app/GnAlertController;->setupButtons()Z

    move-result v4

    .line 384
    .local v4, "hasButtons":Z
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102026e

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 385
    .local v1, "topPanel":Landroid/widget/LinearLayout;
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v11, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v12, 0x101005d

    const/4 v13, 0x0

    invoke-virtual {v0, v6, v11, v12, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 387
    .local v5, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v1}, Lcom/android/internal/app/GnAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v10

    .line 389
    .local v10, "hasTitle":Z
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020272

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 390
    .local v7, "buttonPanel":Landroid/view/View;
    if-nez v4, :cond_0

    .line 391
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_0
    const/4 v3, 0x0

    .line 395
    .local v3, "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 396
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020277

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "customPanel":Landroid/widget/FrameLayout;
    check-cast v3, Landroid/widget/FrameLayout;

    .line 397
    .restart local v3    # "customPanel":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x102002b

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    .line 398
    .local v8, "custom":Landroid/widget/FrameLayout;
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v6, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 399
    iget-boolean v0, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_1

    .line 400
    iget v0, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingLeft:I

    iget v6, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingTop:I

    iget v11, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingRight:I

    iget v12, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingBottom:I

    invoke-virtual {v8, v0, v6, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 404
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 413
    .end local v8    # "custom":Landroid/widget/FrameLayout;
    :cond_2
    :goto_0
    if-eqz v10, :cond_4

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 414
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020271

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 415
    .local v9, "divider":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .end local v9    # "divider":Landroid/view/View;
    :cond_4
    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/GnAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 420
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 421
    return-void

    .line 407
    :cond_5
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x1020277

    invoke-virtual {v0, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 357
    packed-switch p1, :pswitch_data_0

    .line 365
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 363
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 357
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 231
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 233
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/internal/app/GnAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mWindow:Landroid/view/Window;

    const v1, 0x10900cb

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/internal/app/GnAlertController;->setupView()V

    .line 239
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 299
    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    .line 303
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 321
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_0
    iput-object p2, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 307
    iput-object p4, p0, Lcom/android/internal/app/GnAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 323
    :goto_0
    return-void

    .line 311
    :pswitch_1
    iput-object p2, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 312
    iput-object p4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 316
    :pswitch_2
    iput-object p2, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 317
    iput-object p4, p0, Lcom/android/internal/app/GnAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mCustomTitleView:Landroid/view/View;

    .line 254
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 331
    iput p1, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    .line 332
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 333
    if-lez p1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/internal/app/GnAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    if-nez p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 343
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 346
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/internal/app/GnAlertController;->mForceInverseBackground:Z

    .line 350
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 258
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 243
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController;->mTitleView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingSpecified:Z

    .line 269
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController;->mView:Landroid/view/View;

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingSpecified:Z

    .line 278
    iput p2, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingLeft:I

    .line 279
    iput p3, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingTop:I

    .line 280
    iput p4, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingRight:I

    .line 281
    iput p5, p0, Lcom/android/internal/app/GnAlertController;->mViewSpacingBottom:I

    .line 282
    return-void
.end method
