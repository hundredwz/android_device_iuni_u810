.class Lcom/android/internal/app/GnAlertController$AlertParams$4;
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

.field final synthetic val$listView:Lcom/android/internal/app/GnAlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/GnAlertController$AlertParams;Lcom/android/internal/app/GnAlertController$RecycleListView;Lcom/android/internal/app/GnAlertController;)V
    .locals 0

    .prologue
    .line 922
    iput-object p1, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/GnAlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/GnAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/GnAlertController$RecycleListView;

    invoke-virtual {v1, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->this$0:Lcom/android/internal/app/GnAlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/GnAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/GnAlertController;

    # getter for: Lcom/android/internal/app/GnAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/internal/app/GnAlertController;->access$600(Lcom/android/internal/app/GnAlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/GnAlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/GnAlertController$RecycleListView;

    invoke-virtual {v2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v2

    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 929
    return-void
.end method
