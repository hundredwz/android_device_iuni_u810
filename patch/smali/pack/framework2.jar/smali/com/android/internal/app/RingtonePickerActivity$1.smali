.class Lcom/android/internal/app/RingtonePickerActivity$1;
.super Ljava/lang/Object;
.source "RingtonePickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/RingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/RingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    # getter for: Lcom/android/internal/app/RingtonePickerActivity;->mMoreRingtonesPos:I
    invoke-static {v1}, Lcom/android/internal/app/RingtonePickerActivity;->access$000(Lcom/android/internal/app/RingtonePickerActivity;)I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "application/ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v1, "application/x-ogg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    # setter for: Lcom/android/internal/app/RingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, p2}, Lcom/android/internal/app/RingtonePickerActivity;->access$102(Lcom/android/internal/app/RingtonePickerActivity;I)I

    .line 156
    iget-object v1, p0, Lcom/android/internal/app/RingtonePickerActivity$1;->this$0:Lcom/android/internal/app/RingtonePickerActivity;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/app/RingtonePickerActivity;->playRingtone(II)V
    invoke-static {v1, p2, v2}, Lcom/android/internal/app/RingtonePickerActivity;->access$200(Lcom/android/internal/app/RingtonePickerActivity;II)V

    goto :goto_0
.end method
