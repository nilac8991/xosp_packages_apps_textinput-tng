.class Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$1;
.super Ljava/lang/Object;
.source "PermissionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;

    # invokes: Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->handlePositiveClick()V
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/permission/PermissionDialogFragment;)V

    .line 181
    return-void
.end method
