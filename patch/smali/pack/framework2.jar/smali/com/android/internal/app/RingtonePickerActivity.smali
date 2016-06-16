.class public final Lcom/android/internal/app/RingtonePickerActivity;
.super Lcom/android/internal/app/GnAlertActivity;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final ADD_MORE_RINGTONES:I = 0x1

.field private static final DELAY_MS_SELECTION_PLAYED:I = 0x12c

.field private static final SAVE_CLICKED_POS:Ljava/lang/String; = "clicked_pos"

.field private static final TAG:Ljava/lang/String; = "RingtonePickerActivity"


# instance fields
.field private mAudioLocaton:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mClickedPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mDefaultRingtone:Landroid/media/Ringtone;

.field private mDefaultRingtonePos:I

.field private mExistingUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mHasDefaultItem:Z

.field private mHasMoreRingtonesItem:Z

.field private mHasSilentItem:Z

.field private mIntent:Landroid/content/Intent;

.field private mMoreRingtonesPos:I

.field private mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mRingtoneManager:Landroid/media/RingtoneManager;

.field private mSampleRingtonePos:I

.field private mSilentPos:I

.field private mStaticItemCount:I

.field private mType:I

.field private mUriForDefaultItem:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 66
    invoke-direct {p0}, Lcom/android/internal/app/GnAlertActivity;-><init>()V

    .line 85
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 88
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 91
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 94
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 112
    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioLocaton:I

    .line 118
    iput-boolean v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasMoreRingtonesItem:Z

    .line 121
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    .line 124
    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    .line 135
    new-instance v0, Lcom/android/internal/app/RingtonePickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/RingtonePickerActivity$1;-><init>(Lcom/android/internal/app/RingtonePickerActivity;)V

    iput-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/RingtonePickerActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/RingtonePickerActivity;

    .prologue
    .line 66
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/app/RingtonePickerActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/RingtonePickerActivity;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/RingtonePickerActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    return-void
.end method

.method private addDefaultRingtoneItem(Landroid/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 335
    const v0, 0x1040431

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addMoreRingtonesItem(Landroid/widget/ListView;)I
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 345
    .local v0, "textView":Landroid/widget/TextView;
    const v1, 0x10405ff

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 347
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 348
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private addSilentItem(Landroid/widget/ListView;)I
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 339
    const v0, 0x1040433

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/RingtonePickerActivity;->addStaticItem(Landroid/widget/ListView;I)I

    move-result v0

    return v0
.end method

.method private addStaticItem(Landroid/widget/ListView;I)I
    .locals 4
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "textResId"    # I

    .prologue
    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109009d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 328
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 329
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 330
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    .line 331
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private getListPosition(I)I
    .locals 1
    .param p1, "ringtoneManagerPos"    # I

    .prologue
    .line 504
    if-gez p1, :cond_0

    .line 506
    .end local p1    # "ringtoneManagerPos":I
    :goto_0
    return p1

    .restart local p1    # "ringtoneManagerPos":I
    :cond_0
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    add-int/2addr p1, v0

    goto :goto_0
.end method

.method private getRingtoneManagerPosition(I)I
    .locals 1
    .param p1, "listPos"    # I

    .prologue
    .line 498
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mStaticItemCount:I

    sub-int v0, p1, v0

    return v0
.end method

.method private playRingtone(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "delayMs"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "RingtonePickerActivity"

    const-string v1, "stop AuidoSystem.DEVICE_OUT_SPEAKER"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iput p1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    .line 419
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 420
    return-void
.end method

.method private setRingtone(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 569
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 572
    .local v1, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 573
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown ringtone type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :goto_0
    return-void

    .line 576
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 578
    .local v2, "values":Landroid/content/ContentValues;
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-eq v5, v3, :cond_1

    const/16 v3, 0x10

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v3, v4, :cond_2

    .line 579
    :cond_1
    const-string v3, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "ex":Ljava/lang/UnsupportedOperationException;
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t set ringtone flag for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 580
    .end local v0    # "ex":Ljava/lang/UnsupportedOperationException;
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v3, 0x4

    :try_start_1
    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v3, v4, :cond_3

    .line 581
    const-string v3, "is_alarm"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_3
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-eq v3, v4, :cond_4

    const/16 v3, 0x20

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-eq v3, v4, :cond_4

    const/16 v3, 0x40

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    if-ne v3, v4, :cond_5

    .line 584
    :cond_4
    const-string v3, "is_notification"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 586
    :cond_5
    const-string v3, "RingtonePickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupport ringtone type =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private stopAnyPlayingRingtone()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v0}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 495
    :cond_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    invoke-virtual {v5}, Lcom/android/internal/app/GnAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 523
    .local v2, "listView":Landroid/widget/ListView;
    if-nez v2, :cond_0

    .line 524
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: listview is null, return!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    :cond_0
    if-ne p2, v8, :cond_5

    .line 528
    if-nez p3, :cond_2

    const/4 v4, 0x0

    .line 529
    .local v4, "uri":Landroid/net/Uri;
    :goto_1
    if-eqz v4, :cond_1

    .line 530
    invoke-direct {p0, p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->setRingtone(Landroid/content/Context;Landroid/net/Uri;)V

    .line 531
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: RESULT_OK, so set to be ringtone!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 536
    .local v0, "adapter":Landroid/widget/ListAdapter;
    move-object v1, v0

    .line 537
    .local v1, "headAdapter":Landroid/widget/ListAdapter;
    if-eqz v1, :cond_3

    instance-of v5, v1, Landroid/widget/HeaderViewListAdapter;

    if-eqz v5, :cond_3

    .line 539
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .end local v1    # "headAdapter":Landroid/widget/ListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 540
    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5}, Landroid/media/RingtoneManager;->getNewCursor()Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    move-object v5, v0

    .line 541
    check-cast v5, Landroid/widget/SimpleCursorAdapter;

    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 542
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: notify adapter update listview with new cursor!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :goto_2
    iget-object v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v5, v4}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v3

    .line 549
    .local v3, "position":I
    const-string v5, "RingtonePickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult: get the position of uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", position = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    if-eq v3, v8, :cond_4

    .line 552
    iput v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 553
    iget-object v5, p0, Lcom/android/internal/app/GnAlertActivity;->mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v6, v5, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItem:I

    .line 560
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "position":I
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_3
    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 561
    iget v5, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 562
    const-string v5, "RingtonePickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult: set position to be checked: mClickedPos = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 528
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_1

    .line 544
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "headAdapter":Landroid/widget/ListAdapter;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: cursor adapter is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 555
    .end local v1    # "headAdapter":Landroid/widget/ListAdapter;
    .restart local v3    # "position":I
    :cond_4
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: get position is invalid!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 558
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v3    # "position":I
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_5
    const-string v5, "RingtonePickerActivity"

    const-string v6, "onActivityResult: Cancel to choose more ringtones, so do nothing!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 355
    if-ne p2, v5, :cond_0

    const/4 v0, 0x1

    .line 358
    .local v0, "positiveResult":Z
    :goto_0
    iget-object v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v4}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 361
    if-eqz v0, :cond_3

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    if-eq v4, v5, :cond_3

    .line 362
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v1, "resultIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 366
    .local v2, "uri":Landroid/net/Uri;
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v3, v4, :cond_1

    .line 368
    iget-object v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 376
    :goto_1
    const-string v3, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 397
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 398
    return-void

    .end local v0    # "positiveResult":Z
    :cond_0
    move v0, v3

    .line 355
    goto :goto_0

    .line 369
    .restart local v0    # "positiveResult":Z
    .restart local v1    # "resultIntent":Landroid/content/Intent;
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v3, v4, :cond_2

    .line 371
    const/4 v2, 0x0

    goto :goto_1

    .line 373
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v4, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-direct {p0, v4}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 384
    .end local v1    # "resultIntent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 513
    const-string v0, "RingtonePickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 164
    invoke-super {p0, p1}, Lcom/android/internal/app/GnAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHandler:Landroid/os/Handler;

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    .line 173
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 185
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.SHOW_DEFAULT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    .line 186
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.DEFAULT_URI"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 188
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    if-nez v6, :cond_0

    .line 189
    sget-object v6, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    .line 192
    :cond_0
    if-eqz p1, :cond_1

    .line 193
    const-string v6, "clicked_pos"

    invoke-virtual {p1, v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 196
    :cond_1
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    .line 200
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.audio_location"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioLocaton:I

    .line 202
    new-instance v6, Landroid/media/RingtoneManager;

    iget v7, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioLocaton:I

    invoke-direct {v6, p0, v7}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;I)V

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    .line 205
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.INCLUDE_DRM"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 207
    .local v0, "includeDrm":Z
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6, v0}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 210
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 211
    .local v5, "types":I
    if-eq v5, v9, :cond_2

    .line 212
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6, v5}, Landroid/media/RingtoneManager;->setType(I)V

    .line 215
    :cond_2
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    .line 218
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v6}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 221
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    .line 224
    iget-object v2, p0, Lcom/android/internal/app/GnAlertActivity;->mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;

    .line 225
    .local v2, "p":Lcom/android/internal/app/GnAlertController$AlertParams;
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 226
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneClickListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 227
    const-string v6, "title"

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 228
    iput-boolean v8, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsSingleChoice:Z

    .line 229
    iput-object p0, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 230
    const v6, 0x104000a

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 231
    iput-object p0, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 232
    const/high16 v6, 0x1040000

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 233
    iput-object p0, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 234
    iput-object p0, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/GnAlertController$AlertParams$OnPrepareListViewListener;

    .line 244
    const/4 v6, 0x0

    iput-object v6, v2, Lcom/android/internal/app/GnAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 245
    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_3

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/app/GnAlertActivity;->setupAlert()V

    .line 263
    :goto_0
    return-void

    .line 248
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "status":Ljava/lang/String;
    const-string v1, ""

    .line 256
    .local v1, "msg":Ljava/lang/String;
    const v6, 0x1040600

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 259
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v6, 0x11

    invoke-virtual {v4, v6, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 260
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 481
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 484
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 404
    const/16 v0, 0x12c

    invoke-direct {p0, p3, v0}, Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V

    .line 405
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .param p1, "parent"    # Landroid/widget/AdapterView;

    .prologue
    .line 408
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 470
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 471
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 474
    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 476
    return-void
.end method

.method public onPrepareListView(Landroid/widget/ListView;)V
    .locals 3
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 280
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareListView>>>: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasDefaultItem:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioLocaton:I

    if-nez v0, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addDefaultRingtoneItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    .line 288
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasMoreRingtonesItem:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addMoreRingtonesItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I

    .line 298
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mHasSilentItem:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mAudioLocaton:I

    if-nez v0, :cond_2

    .line 300
    invoke-direct {p0, p1}, Lcom/android/internal/app/RingtonePickerActivity;->addSilentItem(Landroid/widget/ListView;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    .line 303
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    if-nez v0, :cond_2

    .line 304
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 308
    :cond_2
    iget v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 309
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mExistingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/media/RingtoneManager;->getRingtonePosition(Landroid/net/Uri;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/RingtonePickerActivity;->getListPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 313
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    iput v1, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItem:I

    .line 314
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepareListView<<<: mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 273
    const-string v0, "RingtonePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: savedInstanceState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mClickedPos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 276
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    .line 277
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    const-string v0, "clicked_pos"

    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 464
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 465
    invoke-direct {p0}, Lcom/android/internal/app/RingtonePickerActivity;->stopAnyPlayingRingtone()V

    .line 466
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 424
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSilentPos:I

    if-ne v1, v2, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 435
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 439
    :cond_2
    iget v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtonePos:I

    if-ne v1, v2, :cond_4

    .line 440
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_3

    .line 441
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mUriForDefaultItem:Landroid/net/Uri;

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/RingtonePickerActivity;->mDefaultRingtone:Landroid/media/Ringtone;

    .line 451
    .local v0, "ringtone":Landroid/media/Ringtone;
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    invoke-virtual {v1}, Landroid/media/RingtoneManager;->stopPreviousRingtone()V

    .line 457
    :goto_1
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    goto :goto_0

    .line 454
    .end local v0    # "ringtone":Landroid/media/Ringtone;
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity;->mRingtoneManager:Landroid/media/RingtoneManager;

    iget v2, p0, Lcom/android/internal/app/RingtonePickerActivity;->mSampleRingtonePos:I

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtonePickerActivity;->getRingtoneManagerPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v0

    .restart local v0    # "ringtone":Landroid/media/Ringtone;
    goto :goto_1
.end method
