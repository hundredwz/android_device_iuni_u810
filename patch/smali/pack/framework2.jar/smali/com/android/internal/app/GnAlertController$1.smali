.class Lcom/android/internal/app/GnAlertController$1;
.super Ljava/lang/Object;
.source "GnAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/GnAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/GnAlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/GnAlertController;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$000(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$100(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$100(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 164
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$700(Lcom/android/internal/app/GnAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/android/internal/app/GnAlertController;->access$600(Lcom/android/internal/app/GnAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    return-void

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$200(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$300(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$300(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$400(Lcom/android/internal/app/GnAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$500(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$1;->this$0:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$500(Lcom/android/internal/app/GnAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
