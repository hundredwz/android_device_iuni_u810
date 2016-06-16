.class public abstract Lcom/android/internal/app/GnAlertActivity;
.super Landroid/app/Activity;
.source "GnAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/android/internal/app/GnAlertController;

.field protected mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 86
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 94
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    new-instance v0, Lcom/android/internal/app/GnAlertController;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/android/internal/app/GnAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    .line 81
    new-instance v0, Lcom/android/internal/app/GnAlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/android/internal/app/GnAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;

    .line 82
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/GnAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 111
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/GnAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlertParams:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/GnAlertController$AlertParams;->apply(Lcom/android/internal/app/GnAlertController;)V

    .line 105
    iget-object v0, p0, Lcom/android/internal/app/GnAlertActivity;->mAlert:Lcom/android/internal/app/GnAlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/GnAlertController;->installContent()V

    .line 106
    return-void
.end method
