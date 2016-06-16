.class public Lcom/android/internal/policy/impl/GnPhoneWindowManager;
.super Ljava/lang/Object;
.source "GnPhoneWindowManager.java"


# static fields
.field public static final SSG_QUICK_OPERATING_DOWN_GESTURE_APP_NAME_OR_PHONE_NUMBER:Ljava/lang/String; = "ssg_quick_operating_down_app_or_phone_number"

.field public static final SSG_QUICK_OPERATING_DOWN_GESTURE_CHOICE:Ljava/lang/String; = "ssg_quick_operating_down_choice"

.field public static final SSG_QUICK_OPERATING_LEFT_GESTURE_APP_NAME_OR_PHONE_NUMBER:Ljava/lang/String; = "ssg_quick_operating_left_app_or_phone_number"

.field public static final SSG_QUICK_OPERATING_LEFT_GESTURE_CHOICE:Ljava/lang/String; = "ssg_quick_operating_left_choice"

.field public static final SSG_QUICK_OPERATING_RIGHT_GESTURE_APP_NAME_OR_PHONE_NUMBER:Ljava/lang/String; = "ssg_quick_operating_right_app_or_phone_number"

.field public static final SSG_QUICK_OPERATING_RIGHT_GESTURE_CHOICE:Ljava/lang/String; = "ssg_quick_operating_right_choice"

.field public static final SSG_QUICK_OPERATING_UP_GESTURE_APP_NAME_OR_PHONE_NUMBER:Ljava/lang/String; = "ssg_quick_operating_up_app_or_phone_number"

.field public static final SSG_QUICK_OPERATING_UP_GESTURE_CHOICE:Ljava/lang/String; = "ssg_quick_operating_up_choice"

.field static final TAG:Ljava/lang/String; = "PhoneWindowManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Ssg(ILandroid/content/Context;)V
    .locals 12
    .param p0, "keyCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    move-object v4, p1

    .line 56
    .local v4, "mContext":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "gesture_open_camera"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    const/4 v8, 0x1

    .line 58
    .local v8, "result":Z
    :goto_0
    if-nez v8, :cond_2

    .line 59
    const-string v9, "persist.sys.gionee.ssh"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    :goto_1
    return-void

    .line 56
    .end local v8    # "result":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 62
    .restart local v8    # "result":Z
    :cond_2
    const-string v9, "persist.sys.gionee.ssh"

    const-string v10, "true"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const/16 v9, 0xe2

    if-eq p0, v9, :cond_3

    const/16 v9, 0xe3

    if-eq p0, v9, :cond_3

    const/16 v9, 0xe4

    if-eq p0, v9, :cond_3

    const/16 v9, 0xe5

    if-ne p0, v9, :cond_0

    .line 67
    :cond_3
    const/4 v1, 0x0

    .line 68
    .local v1, "choice":I
    const/4 v0, 0x0

    .line 70
    .local v0, "appNameOrNum":Ljava/lang/String;
    const/16 v9, 0xe5

    if-ne p0, v9, :cond_4

    .line 71
    const/4 v1, 0x1

    .line 72
    const-string v0, "com.android.camera2/com.android.camera.CameraLauncher"

    .line 74
    :cond_4
    const/16 v9, 0xe3

    if-ne p0, v9, :cond_5

    .line 75
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_down_choice"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 76
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_down_app_or_phone_number"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :cond_5
    const/16 v9, 0xe4

    if-ne p0, v9, :cond_6

    .line 79
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_left_choice"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 80
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_left_app_or_phone_number"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_6
    const/16 v9, 0xe2

    if-ne p0, v9, :cond_7

    .line 83
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_right_choice"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 84
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "ssg_quick_operating_right_app_or_phone_number"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_7
    const/4 v9, 0x2

    if-ne v1, v9, :cond_8

    .line 88
    const/4 v7, 0x0

    .line 89
    .local v7, "peopleNumber":Ljava/lang/String;
    const-string v9, "PhoneWindowManager"

    const-string v10, "TP choice == 2--->phone"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 91
    .local v5, "names":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x3

    if-ne v9, v10, :cond_8

    .line 92
    const/4 v9, 0x1

    aget-object v7, v5, v9

    .line 93
    const-string v9, "PhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TP peopleNumber:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.CALL"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tel://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 95
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v9, 0x34000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "names":[Ljava/lang/String;
    .end local v7    # "peopleNumber":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 118
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5    # "names":[Ljava/lang/String;
    array-length v9, v5

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9

    .line 120
    const/4 v9, 0x0

    aget-object v6, v5, v9

    .line 121
    .local v6, "packageName":Ljava/lang/String;
    const-string v9, "PhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packageName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v9, 0x1

    aget-object v2, v5, v9

    .line 123
    .local v2, "className":Ljava/lang/String;
    const-string v9, "PhoneWindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "className:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v9, "PhoneWindowManager"

    const-string v10, "TP choice == 1-->activity"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 129
    .restart local v3    # "intent":Landroid/content/Intent;
    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const/high16 v9, 0x34000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 132
    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 148
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "names":[Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_9
    if-nez v1, :cond_0

    .line 149
    const-string v9, "persist.sys.gionee.ssh"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static isSsgOpenCamera(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 172
    move-object v0, p0

    .line 173
    .local v0, "mContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 174
    .local v1, "result":Z
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "gesture_open_camera"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 175
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 174
    goto :goto_0
.end method

.method public static writeQuickOperatingSettingsValue(Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v2, 0x0

    .line 180
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v4, "/sys/devices/platform/tp_wake_switch/gesture_wake"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "awakeTimeFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v2    # "fw":Ljava/io/FileWriter;
    .local v3, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    if-eqz v3, :cond_2

    .line 190
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 196
    .end local v0    # "awakeTimeFile":Ljava/io/File;
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 191
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "awakeTimeFile":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 193
    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    .line 184
    .end local v0    # "awakeTimeFile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    if-eqz v2, :cond_0

    .line 190
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 191
    :catch_2
    move-exception v4

    goto :goto_0

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 190
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 193
    :cond_1
    :goto_3
    throw v4

    .line 191
    :catch_3
    move-exception v5

    goto :goto_3

    .line 188
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "awakeTimeFile":Ljava/io/File;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 184
    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v2    # "fw":Ljava/io/FileWriter;
    .restart local v3    # "fw":Ljava/io/FileWriter;
    :cond_2
    move-object v2, v3

    .end local v3    # "fw":Ljava/io/FileWriter;
    .restart local v2    # "fw":Ljava/io/FileWriter;
    goto :goto_0
.end method
