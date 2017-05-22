.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"

# interfaces
.implements Lcom/touchtype_fluency/util/CompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyLanguagePacks(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

.field final synthetic val$reason:Ljava/lang/String;

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;JLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iput-wide p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->val$startTime:J

    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 10
    .param p1, "success"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    const/4 v0, 0x1

    .line 438
    .local v0, "isFinished":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # getter for: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 445
    if-eqz p1, :cond_1

    .line 446
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v5, 0x0

    # setter for: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I
    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I

    .line 447
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime()V
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V

    .line 448
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v5, 0x1

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V
    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 449
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const/4 v5, 0x0

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerifying(Z)V
    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 451
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    .line 452
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v3

    .line 451
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 453
    .local v2, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isBroken()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    # getter for: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$900()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " LanguagePack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 463
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " was broken."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 462
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    .end local v2    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 467
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # getter for: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I

    move-result v3

    const/4 v5, 0x3

    if-ge v3, v5, :cond_2

    .line 472
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->val$reason:Ljava/lang/String;

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyIfNeeded(Ljava/lang/String;)Z
    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)Z

    .line 473
    const/4 v0, 0x0

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # operator++ for: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I

    .line 481
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    if-eqz v0, :cond_4

    .line 483
    if-eqz p1, :cond_5

    .line 484
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->val$reason:Ljava/lang/String;

    .line 485
    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshIfNeeded(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)Z

    move-result v1

    .line 486
    .local v1, "isRefreshScheduledForLater":Z
    if-nez v1, :cond_4

    .line 487
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V
    invoke-static {v3, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    .line 493
    .end local v1    # "isRefreshScheduledForLater":Z
    :cond_4
    :goto_1
    return-void

    .line 490
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;->this$0:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    # invokes: Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V
    invoke-static {v3, v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V

    goto :goto_1
.end method
