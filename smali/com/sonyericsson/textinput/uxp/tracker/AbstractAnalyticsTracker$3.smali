.class Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 4
    .param p1, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 205
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    monitor-enter v2

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    # setter for: Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$002(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    # getter for: Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mEventListenersQueue:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$100(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;

    .line 208
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    # getter for: Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$000(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;->onGaGtmUtilsInitialized(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    goto :goto_0

    .line 211
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 210
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;->this$0:Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    # getter for: Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mEventListenersQueue:Ljava/util/List;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->access$100(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 211
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    return-void
.end method
