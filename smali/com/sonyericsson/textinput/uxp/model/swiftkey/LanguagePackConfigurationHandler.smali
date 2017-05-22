.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_NOT_SET:J


# instance fields
.field private final mConfigurationListenerQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mHasRetriedFailedNuking:Z

.field private mIsRefreshed:Z

.field private mIsRefreshing:Z

.field private mIsVerified:Z

.field private mIsVerifying:Z

.field private mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

.field private mRefreshRetryCount:I

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mVerifyRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 78
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->doReset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyIfNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshIfNeeded(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerifying(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doReset(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 287
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 288
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeResetVerifyTime()V

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeResetRefreshTime()V

    .line 290
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    .line 291
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    .line 292
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 293
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    .line 294
    .local v0, "isCallbackScheduledForLater":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    if-nez v0, :cond_0

    .line 296
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 298
    :cond_0
    return-void

    .line 294
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fireOnConfigured(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 597
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 601
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 602
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 603
    .local v0, "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 604
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

    .line 610
    .local v1, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;->onLanguagePacksConfigured(Z)V

    goto :goto_0

    .line 604
    .end local v0    # "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    .end local v1    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 612
    .restart local v0    # "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    :cond_0
    return-void
.end method

.method private getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 192
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method private isRefreshing()Z
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshing:Z

    monitor-exit v1

    return v0

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVerifying()Z
    .locals 2

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerifying:Z

    monitor-exit v1

    return v0

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private noteRefreshReason(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 616
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 617
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushDictionaryJsonRefreashed(Ljava/lang/String;)V

    .line 620
    :cond_0
    return-void
.end method

.method private refreshIfNeeded(Ljava/lang/String;)Z
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 390
    const/4 v0, 0x1

    .line 391
    .local v0, "isRefreshScheduled":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToConnectToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_1

    .line 395
    const/4 v0, 0x0

    .line 406
    :cond_0
    :goto_0
    monitor-exit v2

    .line 407
    return v0

    .line 397
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListRefreshTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-ne v1, v3, :cond_3

    .line 399
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshLanguagePacks(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 400
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 402
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLanguagePacks(Ljava/lang/String;)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 515
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 516
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 517
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 521
    .local v2, "startTime":J
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V

    .line 522
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshing(Z)V

    .line 523
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;

    invoke-direct {v0, p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;J)V

    .line 580
    .local v0, "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->noteRefreshReason(Ljava/lang/String;)V

    .line 581
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v5, :cond_1

    .line 582
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->refresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    .line 592
    .end local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    monitor-exit v4

    .line 593
    return-void

    .line 584
    .restart local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .restart local v2    # "startTime":J
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    goto :goto_0

    .line 592
    .end local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reset(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->doReset(Ljava/lang/String;)V

    .line 260
    :goto_0
    monitor-exit v1

    .line 261
    return-void

    .line 253
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    goto :goto_0

    .line 260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 3
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 333
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 334
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyIfNeeded(Ljava/lang/String;)Z

    move-result v0

    .line 340
    .local v0, "isCallbackScheduledForLater":Z
    if-nez v0, :cond_1

    .line 341
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshIfNeeded(Ljava/lang/String;)Z

    move-result v0

    .line 343
    :cond_1
    return v0

    .line 337
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRefreshed(Z)V
    .locals 2
    .param p1, "isRefreshed"    # Z

    .prologue
    .line 166
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 170
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshed:Z

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRefreshing(Z)V
    .locals 2
    .param p1, "isRefreshing"    # Z

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshing:Z

    .line 186
    monitor-exit v1

    .line 187
    return-void

    .line 186
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setVerified(Z)V
    .locals 2
    .param p1, "verified"    # Z

    .prologue
    .line 131
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerified:Z

    .line 136
    monitor-exit v1

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setVerifying(Z)V
    .locals 2
    .param p1, "verifying"    # Z

    .prologue
    .line 146
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerifying:Z

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyIfNeeded(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 379
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListVerifyTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 380
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyLanguagePacks(Ljava/lang/String;)V

    .line 385
    :cond_0
    monitor-exit v1

    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    .line 383
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyLanguagePacks(Ljava/lang/String;)V
    .locals 7
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 424
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v5

    .line 425
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 426
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 430
    .local v2, "startTime":J
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    .line 431
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerifying(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;JLjava/lang/String;)V

    .line 496
    .local v0, "completionListener":Lcom/touchtype_fluency/util/CompletionListener;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    const-string v6, "SEMC_nolimit_flow_parameter_7497782f"

    invoke-virtual {v4, v6, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    :try_end_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 505
    .end local v0    # "completionListener":Lcom/touchtype_fluency/util/CompletionListener;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 506
    return-void

    .line 497
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v1

    .line 498
    .local v1, "e":Lcom/touchtype_fluency/LicenseException;
    invoke-virtual {v1}, Lcom/touchtype_fluency/LicenseException;->printStackTrace()V

    goto :goto_0

    .line 505
    .end local v1    # "e":Lcom/touchtype_fluency/LicenseException;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private writeLastRefreshTime()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime(J)V

    .line 103
    return-void
.end method

.method private writeLastRefreshTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 114
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 115
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListRefreshTime(J)V

    .line 116
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 117
    return-void
.end method

.method private writeLastVerifyTime()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime(J)V

    .line 85
    return-void
.end method

.method private writeLastVerifyTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 96
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 97
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListVerifyTime(J)V

    .line 98
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 99
    return-void
.end method

.method private writeResetRefreshTime()V
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime(J)V

    .line 107
    return-void
.end method

.method private writeResetVerifyTime()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime(J)V

    .line 89
    return-void
.end method


# virtual methods
.method public checkForDictionaryUpdates(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;)V
    .locals 4
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 273
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_0

    .line 275
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 277
    :cond_0
    const-string v1, "Update"

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    .line 279
    .local v0, "isCallbackScheduledForLater":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    if-nez v0, :cond_1

    .line 281
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 283
    :cond_1
    return-void

    .line 279
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public configureForced(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 357
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-ne v0, v2, :cond_1

    .line 359
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 373
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 374
    monitor-exit v1

    .line 375
    return-void

    .line 363
    :cond_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 2
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    .line 310
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    .line 311
    .local v0, "isCallbackScheduledForLater":Z
    if-nez v0, :cond_0

    .line 312
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 314
    :cond_0
    return v0
.end method

.method public isRefreshed()Z
    .locals 2

    .prologue
    .line 160
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshed:Z

    monitor-exit v1

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVerified()Z
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerified:Z

    monitor-exit v1

    return v0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyUnusedDictionariesDeleted()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "PreInstalledDeleted"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->reset(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public nukeLanguagePackFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 207
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->nukeLanguageConfig(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    move-result-object v0

    .line 208
    .local v0, "result":Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->SUCCESS:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    const-string v3, "Corrupt language pack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->reset(Ljava/lang/String;)V

    .line 233
    :goto_0
    return v1

    .line 215
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->ERROR:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    if-nez v3, :cond_1

    .line 218
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 219
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    .line 220
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->nukeLanguagePackFile(Ljava/lang/String;)Z

    move v1, v2

    .line 221
    goto :goto_0

    .line 223
    :cond_1
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    :cond_2
    move v1, v2

    .line 233
    goto :goto_0
.end method
