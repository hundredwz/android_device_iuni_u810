.class Lcom/android/internal/app/GnAlertController$AlertParams$3;
.super Ljava/lang/Object;
.source "GnAlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/GnAlertController$AlertParams;->createListView(Lcom/android/internal/app/GnAlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/GnAlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/GnAlertController$AlertParams;Lcom/android/internal/app/GnAlertController;)V
    .locals 0

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/GnAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 915
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$600(Lcom/android/internal/app/GnAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 916
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-boolean v0, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mIsSingleChoice:Z

    if-nez v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v0}, Lcom/android/internal/app/GnAlertController;->access$600(Lcom/android/internal/app/GnAlertController;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 919
    :cond_0
    return-void
.end method
