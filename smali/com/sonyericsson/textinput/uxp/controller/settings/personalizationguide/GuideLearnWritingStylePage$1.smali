.class Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$1;
.super Ljava/lang/Object;
.source "GuideLearnWritingStylePage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage$1;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;

    # invokes: Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->startPersonalizerSettingsActivity()V
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;->access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/GuideLearnWritingStylePage;)V

    .line 57
    return-void
.end method
