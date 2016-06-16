.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 935
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 936
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 937
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 938
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x101

    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v12, 0x0

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1077
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 944
    :sswitch_0
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 951
    :sswitch_1
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureCallback:Landroid/hardware/Camera$GestureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/hardware/Camera$GestureCallback;->onGestureDetection()V

    goto :goto_0

    .line 957
    :sswitch_2
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static {v0}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCSDoneCallback:Landroid/hardware/Camera$ContinuousShotDone;
    invoke-static {v0}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ContinuousShotDone;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1}, Landroid/hardware/Camera$ContinuousShotDone;->onConinuousShotDone(I)V

    goto :goto_0

    .line 962
    :sswitch_3
    const-string v0, "Camera"

    const-string v1, "CAMERA_MSG_GESTURE_DETECTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEventCallback:Landroid/hardware/Camera$GestureEventCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEventCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v0}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    new-array v8, v3, [I

    .line 965
    .local v8, "gestureData":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v3, :cond_1

    .line 966
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    mul-int/lit8 v1, v9, 0x4

    # invokes: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$500([BI)I

    move-result v0

    aput v0, v8, v9

    .line 965
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 969
    :cond_1
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v0}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v0

    aget v1, v8, v12

    aget v2, v8, v2

    const/4 v3, 0x2

    aget v3, v8, v3

    const/4 v4, 0x3

    aget v4, v8, v4

    const/4 v5, 0x4

    aget v5, v8, v5

    const/4 v6, 0x5

    aget v6, v8, v6

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/Camera$GestureEvent;->setGestureValue(IIIIII)V

    .line 976
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEventCallback:Landroid/hardware/Camera$GestureEventCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEventCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mGestureEvent:Landroid/hardware/Camera$GestureEvent;
    invoke-static {v1}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Landroid/hardware/Camera$GestureEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/Camera$GestureEventCallback;->onGestureEvent(Landroid/hardware/Camera$GestureEvent;)V

    goto/16 :goto_0

    .line 982
    .end local v8    # "gestureData":[I
    .end local v9    # "i":I
    :sswitch_4
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mScenceDetectionCallback:Landroid/hardware/Camera$SceneDectetionCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Landroid/hardware/Camera$SceneDectetionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mScenceDetectionCallback:Landroid/hardware/Camera$SceneDectetionCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;)Landroid/hardware/Camera$SceneDectetionCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Landroid/hardware/Camera$SceneDectetionCallback;->onSceneDectetion(I)V

    goto/16 :goto_0

    .line 989
    :sswitch_5
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 995
    :sswitch_6
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1001
    :sswitch_7
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v10

    .line 1002
    .local v10, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v10, :cond_0

    .line 1003
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v0}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1007
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v1, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$902(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1014
    :cond_2
    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v0, v1}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1008
    :cond_3
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v0}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1012
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v0, v2, v12}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;ZZ)V

    goto :goto_2

    .line 1019
    .end local v10    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_8
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1025
    :sswitch_9
    const/4 v7, 0x0

    .line 1026
    .local v7, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1400(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1027
    :try_start_0
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v7

    .line 1028
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    if-eqz v7, :cond_0

    .line 1030
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_4

    .line 1031
    .local v12, "success":Z
    :goto_3
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v7, v12, v0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1028
    .end local v12    # "success":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    move v12, v2

    .line 1030
    goto :goto_3

    .line 1036
    .end local v7    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_a
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_5

    :goto_4
    iget-object v3, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    move v2, v12

    goto :goto_4

    .line 1042
    :sswitch_b
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/hardware/Camera$Face;

    check-cast v0, [Landroid/hardware/Camera$Face;

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1048
    :sswitch_c
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v1, v2}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1055
    :sswitch_d
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$1900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_6

    :goto_5
    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v12, v1}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_6
    move v12, v2

    goto :goto_5

    .line 1061
    :sswitch_e
    new-array v11, v4, [I

    .line 1062
    .local v11, "statsdata":[I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_6
    if-ge v9, v4, :cond_7

    .line 1063
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    mul-int/lit8 v1, v9, 0x4

    # invokes: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v0, v1}, Landroid/hardware/Camera;->access$500([BI)I

    move-result v0

    aput v0, v11, v9

    .line 1062
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1065
    :cond_7
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$2000(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v0, v11, v1}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1071
    .end local v9    # "i":I
    .end local v11    # "statsdata":[I
    :sswitch_f
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v0}, Landroid/hardware/Camera;->access$2100(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget-object v2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v0, v2}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 942
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_c
        0x2 -> :sswitch_0
        0x4 -> :sswitch_9
        0x8 -> :sswitch_a
        0x10 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_5
        0x100 -> :sswitch_6
        0x400 -> :sswitch_b
        0x800 -> :sswitch_d
        0x1000 -> :sswitch_e
        0x2000 -> :sswitch_f
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
        0x10000 -> :sswitch_4
        0x20000 -> :sswitch_3
    .end sparse-switch
.end method
