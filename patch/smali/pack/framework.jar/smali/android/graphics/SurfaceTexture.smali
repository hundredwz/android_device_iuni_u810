.class public Landroid/graphics/SurfaceTexture;
.super Ljava/lang/Object;
.source "SurfaceTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/SurfaceTexture$EventHandler;,
        Landroid/graphics/SurfaceTexture$OutOfResourcesException;,
        Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    }
.end annotation


# instance fields
.field private mBufferQueue:I

.field private mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

.field private mFrameAvailableListener:I

.field private mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private mSurfaceTexture:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 390
    invoke-static {}, Landroid/graphics/SurfaceTexture;->nativeClassInit()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "texName"    # I

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/SurfaceTexture;->init(IZ)V

    .line 107
    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;)V
    .locals 1
    .param p1, "texName"    # I
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/graphics/SurfaceTexture;-><init>(ILandroid/os/Looper;Z)V

    .line 120
    return-void
.end method

.method public constructor <init>(ILandroid/os/Looper;Z)V
    .locals 2
    .param p1, "texName"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "allowSynchronousMode"    # Z

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    if-eqz p2, :cond_0

    .line 160
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, p2}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    .line 168
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p3, v1}, Landroid/graphics/SurfaceTexture;->nativeInit(IZLjava/lang/Object;)V

    .line 169
    return-void

    .line 161
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "eventLooper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 162
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0

    .line 163
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 164
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0

    .line 166
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0
.end method

.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->init(IZ)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    return-object v0
.end method

.method private init(IZ)V
    .locals 2
    .param p1, "texName"    # I
    .param p2, "singleBufferMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 363
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    .line 369
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v1}, Landroid/graphics/SurfaceTexture;->nativeInit(IZLjava/lang/Object;)V

    .line 370
    return-void

    .line 364
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 365
    new-instance v1, Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-direct {v1, p0, v0}, Landroid/graphics/SurfaceTexture$EventHandler;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0

    .line 367
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    goto :goto_0
.end method

.method private native nativeAttachToGLContext(I)I
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeDetachFromGLContext()I
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeGetQueuedCount()I
.end method

.method private native nativeGetTimestamp()J
.end method

.method private native nativeGetTransformMatrix([F)V
.end method

.method private native nativeInit(IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method private native nativeRelease()V
.end method

.method private native nativeReleaseTexImage()V
.end method

.method private native nativeSetDefaultBufferSize(II)V
.end method

.method private native nativeUpdateTexImage()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;

    .prologue
    .line 348
    move-object v2, p0

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 349
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 350
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_1

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    if-eqz v3, :cond_0

    .line 355
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 356
    .local v0, "m":Landroid/os/Message;
    iget-object v3, v1, Landroid/graphics/SurfaceTexture;->mEventHandler:Landroid/graphics/SurfaceTexture$EventHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public attachToGLContext(I)V
    .locals 3
    .param p1, "texName"    # I

    .prologue
    .line 255
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeAttachToGLContext(I)I

    move-result v0

    .line 256
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 257
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during attachToGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_0
    return-void
.end method

.method public detachFromGLContext()V
    .locals 3

    .prologue
    .line 235
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeDetachFromGLContext()I

    move-result v0

    .line 236
    .local v0, "err":I
    if-eqz v0, :cond_0

    .line 237
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error during detachFromGLContext (see logcat for details)"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 324
    :try_start_0
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeFinalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 328
    return-void

    .line 326
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 299
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeGetTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTransformMatrix([F)V
    .locals 2
    .param p1, "mtx"    # [F

    .prologue
    .line 279
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 280
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 282
    :cond_0
    invoke-direct {p0, p1}, Landroid/graphics/SurfaceTexture;->nativeGetTransformMatrix([F)V

    .line 283
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeRelease()V

    .line 319
    return-void
.end method

.method public releaseTexImage()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeReleaseTexImage()V

    .line 221
    return-void
.end method

.method public setDefaultBufferSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->nativeSetDefaultBufferSize(II)V

    .line 203
    return-void
.end method

.method public setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
    .locals 0
    .param p1, "l"    # Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .prologue
    .line 179
    iput-object p1, p0, Landroid/graphics/SurfaceTexture;->mOnFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 180
    return-void
.end method

.method public updateTexImage()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/graphics/SurfaceTexture;->nativeUpdateTexImage()V

    .line 212
    return-void
.end method
