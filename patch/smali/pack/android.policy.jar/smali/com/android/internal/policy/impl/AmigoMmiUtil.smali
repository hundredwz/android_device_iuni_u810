.class public Lcom/android/internal/policy/impl/AmigoMmiUtil;
.super Ljava/lang/Object;
.source "AmigoMmiUtil.java"


# static fields
.field private static final ATUO_MMI_PROCESS_NAME:Ljava/lang/String; = "com.gionee.autommi"

.field private static final MMI_PROCESS_NAME:Ljava/lang/String; = "gn.com.android.mmitest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMMITestRunning(Landroid/content/Context;)Z
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 32
    if-nez p0, :cond_1

    .line 33
    const/4 v1, 0x0

    .line 47
    :cond_0
    :goto_0
    return v1

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    .local v1, "isRunning":Z
    const-string v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 38
    .local v0, "_ActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 39
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_0

    .line 40
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 41
    const-string v5, "gn.com.android.mmitest"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v5, "com.gionee.autommi"

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 42
    :cond_2
    const/4 v1, 0x1

    .line 43
    goto :goto_0

    .line 40
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
