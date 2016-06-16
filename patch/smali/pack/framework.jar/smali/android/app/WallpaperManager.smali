.class public Landroid/app/WallpaperManager;
.super Ljava/lang/Object;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WallpaperManager$1;,
        Landroid/app/WallpaperManager$Globals;,
        Landroid/app/WallpaperManager$FastBitmapDrawable;
    }
.end annotation


# static fields
.field public static final ACTION_CHANGE_LIVE_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CHANGE_LIVE_WALLPAPER"

.field public static final ACTION_CROP_AND_SET_WALLPAPER:Ljava/lang/String; = "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

.field public static final ACTION_LIVE_WALLPAPER_CHOOSER:Ljava/lang/String; = "android.service.wallpaper.LIVE_WALLPAPER_CHOOSER"

.field public static final COMMAND_DROP:Ljava/lang/String; = "android.home.drop"

.field public static final COMMAND_SECONDARY_TAP:Ljava/lang/String; = "android.wallpaper.secondaryTap"

.field public static final COMMAND_TAP:Ljava/lang/String; = "android.wallpaper.tap"

.field private static DEBUG:Z = false

.field public static final EXTRA_LIVE_WALLPAPER_COMPONENT:Ljava/lang/String; = "android.service.wallpaper.extra.LIVE_WALLPAPER_COMPONENT"

.field private static TAG:Ljava/lang/String; = null

.field public static final WALLPAPER_PREVIEW_META_DATA:Ljava/lang/String; = "android.wallpaper.preview"

.field private static sGlobals:Landroid/app/WallpaperManager$Globals;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mWallpaperXStep:F

.field private mWallpaperYStep:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "WallpaperManager"

    sput-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    .line 71
    sput-boolean v1, Landroid/app/WallpaperManager;->DEBUG:Z

    .line 352
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 73
    iput v0, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 364
    iput-object p1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->initGlobals(Landroid/os/Looper;)V

    .line 366
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private auroraAddBMPImageHeader(I)[B
    .locals 4
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    .line 1229
    const/16 v1, 0xe

    new-array v0, v1, [B

    .line 1230
    .local v0, "buffer":[B
    const/16 v1, 0x42

    aput-byte v1, v0, v3

    .line 1231
    const/4 v1, 0x1

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    .line 1232
    const/4 v1, 0x2

    shr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1233
    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1234
    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1235
    const/4 v1, 0x5

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1236
    const/4 v1, 0x6

    aput-byte v3, v0, v1

    .line 1237
    const/4 v1, 0x7

    aput-byte v3, v0, v1

    .line 1238
    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 1239
    const/16 v1, 0x9

    aput-byte v3, v0, v1

    .line 1240
    const/16 v1, 0xa

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    .line 1241
    const/16 v1, 0xb

    aput-byte v3, v0, v1

    .line 1242
    const/16 v1, 0xc

    aput-byte v3, v0, v1

    .line 1243
    const/16 v1, 0xd

    aput-byte v3, v0, v1

    .line 1244
    return-object v0
.end method

.method private auroraAddBMPImageInfosHeader(II)[B
    .locals 8
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/16 v7, 0x18

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1251
    const/16 v1, 0x28

    new-array v0, v1, [B

    .line 1252
    .local v0, "buffer":[B
    const/16 v1, 0x28

    aput-byte v1, v0, v3

    .line 1253
    aput-byte v3, v0, v4

    .line 1254
    aput-byte v3, v0, v5

    .line 1255
    aput-byte v3, v0, v6

    .line 1256
    const/4 v1, 0x4

    shr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1257
    const/4 v1, 0x5

    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1258
    const/4 v1, 0x6

    shr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1259
    const/4 v1, 0x7

    shr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1260
    const/16 v1, 0x8

    shr-int/lit8 v2, p2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1261
    const/16 v1, 0x9

    shr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1262
    const/16 v1, 0xa

    shr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1263
    const/16 v1, 0xb

    shr-int/lit8 v2, p2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 1264
    const/16 v1, 0xc

    aput-byte v4, v0, v1

    .line 1265
    const/16 v1, 0xd

    aput-byte v3, v0, v1

    .line 1266
    const/16 v1, 0xe

    aput-byte v7, v0, v1

    .line 1267
    const/16 v1, 0xf

    aput-byte v3, v0, v1

    .line 1268
    const/16 v1, 0x10

    aput-byte v3, v0, v1

    .line 1269
    const/16 v1, 0x11

    aput-byte v3, v0, v1

    .line 1270
    const/16 v1, 0x12

    aput-byte v3, v0, v1

    .line 1271
    const/16 v1, 0x13

    aput-byte v3, v0, v1

    .line 1272
    const/16 v1, 0x14

    aput-byte v3, v0, v1

    .line 1273
    const/16 v1, 0x15

    aput-byte v3, v0, v1

    .line 1274
    const/16 v1, 0x16

    aput-byte v3, v0, v1

    .line 1275
    const/16 v1, 0x17

    aput-byte v3, v0, v1

    .line 1276
    const/16 v1, -0x20

    aput-byte v1, v0, v7

    .line 1277
    const/16 v1, 0x19

    aput-byte v4, v0, v1

    .line 1278
    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    .line 1279
    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    .line 1280
    const/16 v1, 0x1c

    aput-byte v5, v0, v1

    .line 1281
    const/16 v1, 0x1d

    aput-byte v6, v0, v1

    .line 1282
    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    .line 1283
    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    .line 1284
    const/16 v1, 0x20

    aput-byte v3, v0, v1

    .line 1285
    const/16 v1, 0x21

    aput-byte v3, v0, v1

    .line 1286
    const/16 v1, 0x22

    aput-byte v3, v0, v1

    .line 1287
    const/16 v1, 0x23

    aput-byte v3, v0, v1

    .line 1288
    const/16 v1, 0x24

    aput-byte v3, v0, v1

    .line 1289
    const/16 v1, 0x25

    aput-byte v3, v0, v1

    .line 1290
    const/16 v1, 0x26

    aput-byte v3, v0, v1

    .line 1291
    const/16 v1, 0x27

    aput-byte v3, v0, v1

    .line 1292
    return-object v0
.end method

.method private auroraAddBMP_RGB_888([III)[B
    .locals 9
    .param p1, "b"    # [I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1209
    array-length v4, p1

    .line 1210
    .local v4, "len":I
    mul-int v7, p2, p3

    mul-int/lit8 v7, v7, 0x3

    new-array v0, v7, [B

    .line 1211
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 1212
    .local v5, "offset":I
    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-lt v2, p2, :cond_1

    .line 1214
    move v1, v2

    .local v1, "end":I
    sub-int v7, v2, p2

    add-int/lit8 v6, v7, 0x1

    .line 1215
    .local v6, "start":I
    move v3, v6

    .local v3, "j":I
    :goto_1
    if-gt v3, v1, :cond_0

    .line 1216
    aget v7, p1, v3

    shr-int/lit8 v7, v7, 0x0

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    .line 1217
    add-int/lit8 v7, v5, 0x1

    aget v8, p1, v3

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1218
    add-int/lit8 v7, v5, 0x2

    aget v8, p1, v3

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 1219
    add-int/lit8 v5, v5, 0x3

    .line 1215
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1212
    :cond_0
    sub-int/2addr v2, p2

    goto :goto_0

    .line 1222
    .end local v1    # "end":I
    .end local v3    # "j":I
    .end local v6    # "start":I
    :cond_1
    return-object v0
.end method

.method private auroraSetBitmap(Landroid/graphics/Bitmap;)V
    .locals 21
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1143
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1144
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    if-eqz p1, :cond_0

    .line 1150
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .local v4, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 1152
    .local v8, "h":I
    mul-int v1, v4, v8

    :try_start_0
    new-array v2, v1, [I

    .line 1153
    .local v2, "pixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 1154
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v8}, Landroid/app/WallpaperManager;->auroraAddBMP_RGB_888([III)[B

    move-result-object v19

    .line 1155
    .local v19, "rgb":[B
    move-object/from16 v0, v19

    array-length v1, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Landroid/app/WallpaperManager;->auroraAddBMPImageHeader(I)[B

    move-result-object v16

    .line 1156
    .local v16, "header":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Landroid/app/WallpaperManager;->auroraAddBMPImageInfosHeader(II)[B

    move-result-object v17

    .line 1159
    .local v17, "infos":[B
    move-object/from16 v0, v19

    array-length v1, v0

    add-int/lit8 v1, v1, 0x36

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 1160
    .local v10, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    .line 1161
    .local v9, "buffer":[B
    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    array-length v5, v0

    move-object/from16 v0, v16

    invoke-static {v0, v1, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1162
    const/4 v1, 0x0

    const/16 v3, 0xe

    move-object/from16 v0, v17

    array-length v5, v0

    move-object/from16 v0, v17

    invoke-static {v0, v1, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1163
    const/4 v1, 0x0

    const/16 v3, 0x36

    move-object/from16 v0, v19

    array-length v5, v0

    move-object/from16 v0, v19

    invoke-static {v0, v1, v9, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1167
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.SET_WALLPAPER_HINTS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v18

    .line 1169
    .local v18, "permission":I
    if-nez v18, :cond_3

    .line 1170
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1171
    .local v11, "dm":Landroid/util/DisplayMetrics;
    iget v1, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v3, :cond_2

    .line 1172
    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v20, v0

    .line 1173
    .local v20, "swap":I
    iget v1, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1174
    move/from16 v0, v20

    iput v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1176
    .end local v20    # "swap":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 1177
    iget v1, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 1184
    .end local v11    # "dm":Landroid/util/DisplayMetrics;
    :cond_3
    :goto_1
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v1}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 1185
    .local v13, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v13, :cond_0

    .line 1188
    const/4 v14, 0x0

    .line 1190
    .local v14, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v15, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v15, v13}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1191
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v15, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v15, v9}, Ljava/io/OutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1193
    if-eqz v15, :cond_0

    .line 1194
    :try_start_4
    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto/16 :goto_0

    .line 1197
    .end local v13    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "permission":I
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1179
    .restart local v11    # "dm":Landroid/util/DisplayMetrics;
    .restart local v18    # "permission":I
    :cond_4
    iget v1, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x2

    iget v3, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1200
    .end local v2    # "pixels":[I
    .end local v9    # "buffer":[B
    .end local v10    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v11    # "dm":Landroid/util/DisplayMetrics;
    .end local v16    # "header":[B
    .end local v17    # "infos":[B
    .end local v18    # "permission":I
    .end local v19    # "rgb":[B
    :catch_1
    move-exception v12

    .line 1201
    .local v12, "e":Ljava/lang/OutOfMemoryError;
    sget-object v1, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError--->"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1193
    .end local v12    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v2    # "pixels":[I
    .restart local v9    # "buffer":[B
    .restart local v10    # "byteBuffer":Ljava/nio/ByteBuffer;
    .restart local v13    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "header":[B
    .restart local v17    # "infos":[B
    .restart local v18    # "permission":I
    .restart local v19    # "rgb":[B
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v14, :cond_5

    .line 1194
    :try_start_5
    invoke-virtual {v14}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_5
    throw v1
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    .line 1193
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v1

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method static generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v5, 0x0

    .line 1083
    if-nez p1, :cond_1

    move-object p1, v5

    .line 1136
    .end local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 1087
    .restart local p1    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    const-string/jumbo v10, "window"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1088
    .local v9, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1089
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1090
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1092
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    if-ne v10, p2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    if-eq v10, p3, :cond_0

    .line 1099
    :cond_2
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1100
    .local v5, "newbm":Landroid/graphics/Bitmap;
    iget v10, v4, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {v5, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 1102
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1103
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1104
    .local v8, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 1105
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1107
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 1108
    .local v2, "deltaw":I
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 1110
    .local v1, "deltah":I
    if-gtz v2, :cond_3

    if-lez v1, :cond_4

    .line 1113
    :cond_3
    if-le v2, v1, :cond_5

    .line 1114
    int-to-float v10, p2

    iget v11, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v7, v10, v11

    .line 1118
    .local v7, "scale":F
    :goto_1
    iget v10, v8, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->right:I

    .line 1119
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 1120
    iget v10, v8, Landroid/graphics/Rect;->right:I

    sub-int v2, p2, v10

    .line 1121
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v10

    .line 1124
    .end local v7    # "scale":F
    :cond_4
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v1, 0x2

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 1126
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1127
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1128
    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1129
    const/4 v10, 0x0

    invoke-virtual {v0, p1, v10, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1131
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1132
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object p1, v5

    .line 1133
    goto/16 :goto_0

    .line 1116
    .end local v6    # "paint":Landroid/graphics/Paint;
    :cond_5
    int-to-float v10, p3

    iget v11, v8, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v11, v11

    div-float v7, v10, v11

    .restart local v7    # "scale":F
    goto :goto_1

    .line 1134
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "deltah":I
    .end local v2    # "deltaw":I
    .end local v5    # "newbm":Landroid/graphics/Bitmap;
    .end local v7    # "scale":F
    .end local v8    # "targetRect":Landroid/graphics/Rect;
    :catch_0
    move-exception v3

    .line 1135
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    sget-object v10, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v11, "Can\'t generate default bitmap"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 372
    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    return-object v0
.end method

.method private static getMaxCropRect(IIIIFF)Landroid/graphics/RectF;
    .locals 7
    .param p0, "inWidth"    # I
    .param p1, "inHeight"    # I
    .param p2, "outWidth"    # I
    .param p3, "outHeight"    # I
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    const/4 v6, 0x0

    .line 554
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 556
    .local v1, "cropRect":Landroid/graphics/RectF;
    int-to-float v3, p0

    int-to-float v4, p1

    div-float/2addr v3, v4

    int-to-float v4, p2

    int-to-float v5, p3

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    .line 557
    iput v6, v1, Landroid/graphics/RectF;->top:F

    .line 558
    int-to-float v3, p1

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 559
    int-to-float v3, p2

    int-to-float v4, p1

    int-to-float v5, p3

    div-float/2addr v4, v5

    mul-float v2, v3, v4

    .line 560
    .local v2, "cropWidth":F
    int-to-float v3, p0

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 561
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 569
    .end local v2    # "cropWidth":F
    :goto_0
    return-object v1

    .line 563
    :cond_0
    iput v6, v1, Landroid/graphics/RectF;->left:F

    .line 564
    int-to-float v3, p0

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 565
    int-to-float v3, p3

    int-to-float v4, p0

    int-to-float v5, p2

    div-float/2addr v4, v5

    mul-float v0, v3, v4

    .line 566
    .local v0, "cropHeight":F
    int-to-float v3, p1

    sub-float/2addr v3, v0

    mul-float/2addr v3, p5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 567
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method static initGlobals(Landroid/os/Looper;)V
    .locals 2
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 356
    sget-object v1, Landroid/app/WallpaperManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 357
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Landroid/app/WallpaperManager$Globals;

    invoke-direct {v0, p0}, Landroid/app/WallpaperManager$Globals;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    .line 360
    :cond_0
    monitor-exit v1

    .line 361
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .param p1, "data"    # Ljava/io/InputStream;
    .param p2, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 875
    const v2, 0x8000

    new-array v1, v2, [B

    .line 877
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, "amt":I
    if-lez v0, :cond_0

    .line 878
    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    const v0, 0x1080220

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->setResource(I)V

    .line 1080
    return-void
.end method

.method public clearWallpaperOffsets(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 1060
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    :goto_0
    return-void

    .line 1062
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 643
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    invoke-virtual {v0}, Landroid/app/WallpaperManager$Globals;->forgetLoadedWallpaper()V

    .line 644
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 633
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v1, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 405
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/WallpaperManager;->getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBuiltInDrawable(IIZFF)Landroid/graphics/drawable/Drawable;
    .locals 29
    .param p1, "outWidth"    # I
    .param p2, "outHeight"    # I
    .param p3, "scaleToFit"    # Z
    .param p4, "horizontalAlignment"    # F
    .param p5, "verticalAlignment"    # F

    .prologue
    .line 423
    sget-object v5, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v5}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v5

    if-nez v5, :cond_0

    .line 424
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "WallpaperService not running"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/4 v5, 0x0

    .line 547
    :goto_0
    return-object v5

    .line 427
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    .line 428
    .local v22, "resources":Landroid/content/res/Resources;
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 429
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move/from16 v0, p5

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 431
    new-instance v17, Ljava/io/BufferedInputStream;

    const v5, 0x1080220

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 434
    .local v17, "is":Ljava/io/InputStream;
    if-nez v17, :cond_1

    .line 435
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper input stream is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/4 v5, 0x0

    goto :goto_0

    .line 438
    :cond_1
    if-lez p1, :cond_2

    if-gtz p2, :cond_3

    .line 439
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 440
    .local v16, "fullSize":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 445
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 446
    .local v20, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move-object/from16 v0, v20

    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 447
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 448
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v5, :cond_5

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v5, :cond_5

    .line 449
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 450
    .local v3, "inWidth":I
    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 457
    .local v4, "inHeight":I
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    const v5, 0x1080220

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 462
    .restart local v17    # "is":Ljava/io/InputStream;
    move/from16 v0, p1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 463
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 464
    if-eqz p3, :cond_6

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p5

    .line 465
    invoke-static/range {v3 .. v8}, Landroid/app/WallpaperManager;->getMaxCropRect(IIIIFF)Landroid/graphics/RectF;

    move-result-object v13

    .line 474
    .local v13, "cropRectF":Landroid/graphics/RectF;
    :goto_1
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 475
    .local v25, "roundedTrueCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 477
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_7

    .line 478
    :cond_4
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "crop has bad values for full size image"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 452
    .end local v3    # "inWidth":I
    .end local v4    # "inHeight":I
    .end local v13    # "cropRectF":Landroid/graphics/RectF;
    .end local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_5
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "default wallpaper dimensions are 0"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 468
    .restart local v3    # "inWidth":I
    .restart local v4    # "inHeight":I
    :cond_6
    sub-int v5, v3, p1

    int-to-float v5, v5

    mul-float v18, v5, p4

    .line 469
    .local v18, "left":F
    move/from16 v0, p1

    int-to-float v5, v0

    add-float v24, v18, v5

    .line 470
    .local v24, "right":F
    sub-int v5, v4, p2

    int-to-float v5, v5

    mul-float v28, v5, p5

    .line 471
    .local v28, "top":F
    move/from16 v0, p2

    int-to-float v5, v0

    add-float v9, v28, v5

    .line 472
    .local v9, "bottom":F
    new-instance v13, Landroid/graphics/RectF;

    move/from16 v0, v18

    move/from16 v1, v28

    move/from16 v2, v24

    invoke-direct {v13, v0, v1, v2, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .restart local v13    # "cropRectF":Landroid/graphics/RectF;
    goto :goto_1

    .line 483
    .end local v9    # "bottom":F
    .end local v18    # "left":F
    .end local v24    # "right":F
    .end local v28    # "top":F
    .restart local v25    # "roundedTrueCrop":Landroid/graphics/Rect;
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int v5, v5, p1

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int v6, v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v26

    .line 487
    .local v26, "scaleDownSampleSize":I
    const/4 v14, 0x0

    .line 489
    .local v14, "decoder":Landroid/graphics/BitmapRegionDecoder;
    const/4 v5, 0x1

    :try_start_0
    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 494
    :goto_2
    const/4 v11, 0x0

    .line 495
    .local v11, "crop":Landroid/graphics/Bitmap;
    if-eqz v14, :cond_9

    .line 497
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 498
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_8

    .line 499
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 501
    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 502
    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    .line 505
    :cond_9
    if-nez v11, :cond_c

    .line 507
    new-instance v17, Ljava/io/BufferedInputStream;

    .end local v17    # "is":Ljava/io/InputStream;
    const v5, 0x1080220

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 509
    .restart local v17    # "is":Ljava/io/InputStream;
    const/16 v16, 0x0

    .line 510
    .restart local v16    # "fullSize":Landroid/graphics/Bitmap;
    if-eqz v17, :cond_b

    .line 511
    new-instance v20, Landroid/graphics/BitmapFactory$Options;

    .end local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    invoke-direct/range {v20 .. v20}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 512
    .restart local v20    # "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_a

    .line 513
    move/from16 v0, v26

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 515
    :cond_a
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 517
    :cond_b
    if-eqz v16, :cond_c

    .line 518
    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 524
    .end local v16    # "fullSize":Landroid/graphics/Bitmap;
    :cond_c
    if-nez v11, :cond_d

    .line 525
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot decode default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 490
    .end local v11    # "crop":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 491
    .local v15, "e":Ljava/io/IOException;
    sget-object v5, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v6, "cannot open region decoder for default wallpaper"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 530
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v11    # "crop":Landroid/graphics/Bitmap;
    :cond_d
    if-lez p1, :cond_f

    if-lez p2, :cond_f

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    move/from16 v0, p1

    if-ne v5, v0, :cond_e

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, p2

    if-eq v5, v0, :cond_f

    .line 532
    :cond_e
    new-instance v19, Landroid/graphics/Matrix;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Matrix;-><init>()V

    .line 533
    .local v19, "m":Landroid/graphics/Matrix;
    new-instance v12, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct {v12, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 534
    .local v12, "cropRect":Landroid/graphics/RectF;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, p1

    int-to-float v7, v0

    move/from16 v0, p2

    int-to-float v8, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 535
    .local v23, "returnRect":Landroid/graphics/RectF;
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 536
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/RectF;->height()F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 538
    .local v27, "tmp":Landroid/graphics/Bitmap;
    if-eqz v27, :cond_f

    .line 539
    new-instance v10, Landroid/graphics/Canvas;

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 540
    .local v10, "c":Landroid/graphics/Canvas;
    new-instance v21, Landroid/graphics/Paint;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 541
    .local v21, "p":Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 542
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v10, v11, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 543
    move-object/from16 v11, v27

    .line 547
    .end local v10    # "c":Landroid/graphics/Canvas;
    .end local v12    # "cropRect":Landroid/graphics/RectF;
    .end local v19    # "m":Landroid/graphics/Matrix;
    .end local v21    # "p":Landroid/graphics/Paint;
    .end local v23    # "returnRect":Landroid/graphics/RectF;
    .end local v27    # "tmp":Landroid/graphics/Bitmap;
    :cond_f
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v22

    invoke-direct {v5, v0, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public getCropAndSetWallpaperIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 14
    .param p1, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 686
    iget-object v12, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 687
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v12, "android.service.wallpaper.CROP_AND_SET_WALLPAPER"

    invoke-direct {v3, v12, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 689
    .local v3, "cropAndSetWallpaperIntent":Landroid/content/Intent;
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 692
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v13, "android.intent.category.HOME"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 693
    .local v7, "homeIntent":Landroid/content/Intent;
    const/high16 v12, 0x10000

    invoke-virtual {v9, v7, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 695
    .local v10, "resolvedHome":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_1

    .line 696
    iget-object v12, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const/4 v12, 0x0

    invoke-virtual {v9, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 700
    .local v5, "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_1

    .line 742
    .end local v3    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v3

    .line 706
    .end local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "cropAndSetWallpaperIntent":Landroid/content/Intent;
    :cond_1
    const-string v12, "com.android.wallpapercropper"

    invoke-virtual {v3, v12}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 707
    const/4 v12, 0x0

    invoke-virtual {v9, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 709
    .restart local v5    # "cropAppList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_0

    .line 715
    new-instance v4, Landroid/content/Intent;

    const-string v12, "com.android.camera.action.CROP"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v4, "cropAndSetWallpaperIntent2":Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 718
    .local v2, "bund":Landroid/os/Bundle;
    iget-object v12, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    .line 719
    .local v11, "wm":Landroid/view/WindowManager;
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 720
    .local v8, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 721
    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 722
    .local v1, "W":I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 723
    .local v0, "H":I
    const-string/jumbo v12, "set-as-wallpaper"

    const/4 v13, 0x1

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    const-string/jumbo v12, "outputX"

    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string/jumbo v12, "outputY"

    invoke-virtual {v2, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v12, "com.android.gallery3d"

    const-string v13, "com.android.gallery3d.filtershow.crop.CropActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    const-string v12, "aspectX"

    invoke-virtual {v4, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 730
    const-string v12, "aspectY"

    invoke-virtual {v4, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 732
    const-string v12, "crop"

    const-string/jumbo v13, "true"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    const-string v12, "image/*"

    invoke-virtual {v4, p1, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    const/4 v12, 0x0

    invoke-virtual {v9, v4, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 738
    .local v6, "cropAppLists":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_2

    move-object v3, v4

    .line 739
    goto :goto_0

    .line 741
    :cond_2
    const-string v12, "com.android.gallery3d"

    const-string v13, "com.android.gallery3d.filtershow.crop.CropActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v3, v4

    .line 742
    goto/16 :goto_0
.end method

.method public getDesiredMinimumHeight()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 943
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 944
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    return v1

    .line 948
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getHeightHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 949
    :catch_0
    move-exception v0

    .line 951
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDesiredMinimumWidth()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 916
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 917
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :goto_0
    return v1

    .line 921
    :cond_0
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWidthHint()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 922
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 391
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 394
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 397
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 605
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 606
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 607
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 609
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public getIWallpaperManager()Landroid/app/IWallpaperManager;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperInfo()Landroid/app/WallpaperInfo;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 653
    :try_start_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    if-nez v2, :cond_0

    .line 654
    sget-object v2, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v3, "WallpaperService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_0
    return-object v1

    .line 657
    :cond_0
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v2}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IWallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public hasResourceWallpaper(I)Z
    .locals 6
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 888
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_0

    .line 889
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :goto_0
    return v3

    .line 893
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 894
    .local v2, "resources":Landroid/content/res/Resources;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "res:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 895
    .local v1, "name":Ljava/lang/String;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IWallpaperManager;->hasNamedWallpaper(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 896
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public peekDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 582
    sget-object v2, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 583
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 584
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 585
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/BitmapDrawable;->setDither(Z)V

    .line 588
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public peekFastDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 620
    sget-object v1, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    iget-object v3, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/app/WallpaperManager$Globals;->peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 621
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 622
    new-instance v1, Landroid/app/WallpaperManager$FastBitmapDrawable;

    invoke-direct {v1, v0, v2}, Landroid/app/WallpaperManager$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Landroid/app/WallpaperManager$1;)V

    .line 624
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .locals 8
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1040
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    return-void

    .line 1043
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 830
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager;->auroraSetBitmap(Landroid/graphics/Bitmap;)V

    .line 832
    return-void
.end method

.method public setResource(I)V
    .locals 7
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 767
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    if-nez v4, :cond_1

    .line 768
    sget-object v4, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v5, "WallpaperService not running"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/app/WallpaperManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 774
    .local v3, "resources":Landroid/content/res/Resources;
    sget-object v4, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v4}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "res:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 776
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 777
    const/4 v1, 0x0

    .line 779
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 782
    if-eqz v2, :cond_0

    .line 783
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_0

    .line 787
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 782
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "resources":Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_2

    .line 783
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 782
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setStream(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "data"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 850
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 851
    sget-object v3, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v4, "WallpaperService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    :try_start_0
    sget-object v3, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v3}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/app/IWallpaperManager;->setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 856
    .local v0, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v0, :cond_0

    .line 859
    const/4 v1, 0x0

    .line 861
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 862
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-direct {p0, p1, v2}, Landroid/app/WallpaperManager;->setWallpaper(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 864
    if-eqz v2, :cond_0

    .line 865
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    goto :goto_0

    .line 868
    .end local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 864
    .restart local v0    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_2

    .line 865
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V

    :cond_2
    throw v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 864
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public setWallpaperOffsetSteps(FF)V
    .locals 0
    .param p1, "xStep"    # F
    .param p2, "yStep"    # F

    .prologue
    .line 1019
    iput p1, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    .line 1020
    iput p2, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    .line 1021
    return-void
.end method

.method public setWallpaperOffsets(Landroid/os/IBinder;FF)V
    .locals 6
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "xOffset"    # F
    .param p3, "yOffset"    # F

    .prologue
    .line 1002
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iget v4, p0, Landroid/app/WallpaperManager;->mWallpaperXStep:F

    iget v5, p0, Landroid/app/WallpaperManager;->mWallpaperYStep:F

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/view/IWindowSession;->setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1008
    :goto_0
    return-void

    .line 1005
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suggestDesiredDimensions(II)V
    .locals 2
    .param p1, "minimumWidth"    # I
    .param p2, "minimumHeight"    # I

    .prologue
    .line 976
    :try_start_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 977
    sget-object v0, Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;

    const-string v1, "WallpaperService not running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :goto_0
    return-void

    .line 979
    :cond_0
    sget-object v0, Landroid/app/WallpaperManager;->sGlobals:Landroid/app/WallpaperManager$Globals;

    # getter for: Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;
    invoke-static {v0}, Landroid/app/WallpaperManager$Globals;->access$300(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IWallpaperManager;->setDimensionHints(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 981
    :catch_0
    move-exception v0

    goto :goto_0
.end method
