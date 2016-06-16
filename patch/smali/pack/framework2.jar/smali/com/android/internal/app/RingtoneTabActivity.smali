.class public Lcom/android/internal/app/RingtoneTabActivity;
.super Landroid/app/TabActivity;
.source "RingtoneTabActivity.java"


# static fields
.field public static final GN_THEME_SUPPORT:Z

.field private static final TAG:Ljava/lang/String; = "RingtoneTabActivity"

.field public static mDarkTheme:Z

.field public static mLightTheme:Z


# instance fields
.field private mAudioLocation:I

.field private mOriginIntent:Landroid/content/Intent;

.field private tabHost:Landroid/widget/TabHost;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-boolean v0, Lcom/android/internal/app/RingtoneTabActivity;->mDarkTheme:Z

    .line 43
    sput-boolean v0, Lcom/android/internal/app/RingtoneTabActivity;->mLightTheme:Z

    .line 46
    const-string v0, "ro.gn.theme.prop"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/app/RingtoneTabActivity;->GN_THEME_SUPPORT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    return-void
.end method

.method private getAudioLocation(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 124
    const-string v4, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 125
    .local v0, "customRingtone":Landroid/net/Uri;
    const-string v4, "android.intent.extra.ringtone.TYPE"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 126
    .local v2, "type":I
    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 128
    .local v1, "defaultRingtone":Landroid/net/Uri;
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "uriString":Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iput v5, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    .line 143
    .end local v3    # "uriString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v3    # "uriString":Ljava/lang/String;
    :cond_1
    iput v6, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    goto :goto_0

    .line 135
    .end local v3    # "uriString":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 137
    .restart local v3    # "uriString":Ljava/lang/String;
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    iput v5, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    goto :goto_0

    .line 140
    :cond_3
    iput v6, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 151
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 153
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x4000000

    const/4 v5, 0x1

    .line 81
    invoke-virtual {p0, v5}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 82
    const-string v2, "RingtoneTabActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->mOriginIntent:Landroid/content/Intent;

    .line 89
    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->mOriginIntent:Landroid/content/Intent;

    if-nez v2, :cond_0

    .line 90
    const-string v2, "RingtoneTabActivity"

    const-string v3, "mOriginItent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->mOriginIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/internal/app/RingtoneTabActivity;->getAudioLocation(Landroid/content/Intent;)V

    .line 93
    const-string v2, "RingtoneTabActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAudioLocation is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Landroid/app/TabActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->mOriginIntent:Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 98
    .local v0, "phoneIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 99
    const-string v2, "android.intent.extra.audio_location"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->mOriginIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 106
    .local v1, "sdcardIntent":Landroid/content/Intent;
    const-class v2, Lcom/android/internal/app/RingtonePickerActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    const-string v2, "android.intent.extra.audio_location"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    const-string v4, "tab1"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x10405fe

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 116
    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    const-string v4, "tab2"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const v4, 0x10405fd

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 119
    iget-object v2, p0, Lcom/android/internal/app/RingtoneTabActivity;->tabHost:Landroid/widget/TabHost;

    iget v3, p0, Lcom/android/internal/app/RingtoneTabActivity;->mAudioLocation:I

    invoke-virtual {v2, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 121
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 70
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 58
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 52
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "RingtoneTabActivity"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-super {p0}, Landroid/app/ActivityGroup;->onStop()V

    .line 64
    return-void
.end method
