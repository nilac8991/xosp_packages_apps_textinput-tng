.class public Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceGlue.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTENSIVE_DEBUG:Z = false

.field private static final GOOGLE_QUICK_SEARCH_BOX:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final mExternalFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/collaboration/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExternalRequirements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

.field private static mIsUserAMonkey:Z


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

.field private mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field private final mHandledOnPressKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

.field private mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

.field private final mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

.field private mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

.field private mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

.field private volatile mIsBinding:Z

.field private mIsDirectBootLocked:Z

.field private mIsFullscreenMode:Z

.field private volatile mIsUnbinding:Z

.field private mIsUsingDebugViews:Z

.field private mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

.field private mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

.field private mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

.field private final mOnDestroyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

.field private mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

.field private mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

.field private mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

.field private mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->TAG:Ljava/lang/String;

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/controller/ICursorListener;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/ISelectionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->REQUIRED:[Ljava/lang/Class;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    .line 91
    sput-boolean v3, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "rebind"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "unbind"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "reinitialize"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;-><init>(Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .line 100
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsDirectBootLocked:Z

    .line 102
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    .line 120
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 134
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInstance(Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;)V

    .line 135
    return-void
.end method

.method public static addExternalFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V
    .locals 1
    .param p0, "factory"    # Lcom/sonyericsson/collaboration/ObjectFactory;

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public static addExternalRequirement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "requirement"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private bind(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 20
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "rebind"    # Z

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 489
    const-string v2, "Bind not on main thread"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 492
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    if-eqz v2, :cond_2

    .line 493
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind when mIsBinding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsUnbinding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 497
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    .line 498
    new-instance v2, Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-direct {v2}, Lcom/sonyericsson/collaboration/ObjectBinder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    if-eqz v2, :cond_3

    if-nez p2, :cond_4

    .line 500
    :cond_3
    new-instance v2, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-direct {v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 503
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    if-eqz v2, :cond_5

    if-nez p2, :cond_6

    .line 504
    :cond_5
    new-instance v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    .line 507
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 509
    .local v19, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    if-nez v2, :cond_9

    .line 513
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "com.sonyericsson.textinput.uxp.test.MonkeyMode"

    .line 514
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    .line 515
    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    if-eqz v2, :cond_7

    .line 517
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 518
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v3

    .line 519
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v4

    .line 517
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createMonkeySettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 516
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->setSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 537
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 538
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "normal"

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    .line 537
    invoke-virtual/range {v2 .. v10}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->addRequirements(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;Landroid/view/inputmethod/EditorInfo;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 542
    if-nez p2, :cond_b

    .line 543
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 544
    .local v18, "requirement":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const/4 v4, 0x0

    aget-object v4, v18, v4

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 514
    .end local v18    # "requirement":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 526
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .line 528
    .local v17, "randomSettings":Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v15

    .line 529
    .local v15, "keyboardResizeHeightPxCurrentBefore":I
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->reinitSettings(Landroid/content/Context;)V

    .line 530
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v2

    if-eq v2, v15, :cond_7

    .line 533
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->requestHideSelf(I)V

    goto :goto_1

    .line 547
    .end local v15    # "keyboardResizeHeightPxCurrentBefore":I
    .end local v17    # "randomSettings":Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputFactories;->addFactories(Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;)V

    .line 548
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 549
    .local v14, "externalFactory":Lcom/sonyericsson/collaboration/ObjectFactory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-virtual {v3, v14}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    goto :goto_3

    .line 553
    .end local v14    # "externalFactory":Lcom/sonyericsson/collaboration/ObjectFactory;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getBindableViews()[Ljava/lang/Object;

    move-result-object v11

    .line 554
    .local v11, "bindableViews":[Ljava/lang/Object;
    const/16 v2, 0x9

    new-array v12, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v12, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    aput-object v3, v12, v2

    const/4 v2, 0x2

    .line 555
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x3

    .line 556
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x4

    .line 557
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x5

    .line 558
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    aput-object v3, v12, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    aput-object v3, v12, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    aput-object v3, v12, v2

    .line 564
    .local v12, "bindables":[Ljava/lang/Object;
    invoke-static {v11, v12}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .line 566
    .local v16, "mergedBindables":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->build([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/collaboration/ObjectBinder;->use([Ljava/lang/Object;)V

    .line 569
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/collaboration/ObjectBinder;->init(Z)V
    :try_end_0
    .catch Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    .line 575
    return-void

    .line 570
    :catch_0
    move-exception v13

    .line 571
    .local v13, "e":Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doCreateInputView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvaluateFullscreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    .line 319
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-ne v0, v1, :cond_3

    .line 322
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 323
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 348
    :cond_1
    :goto_0
    return-void

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030036

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 330
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-ne v0, v1, :cond_6

    .line 333
    :cond_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 334
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 338
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 340
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private fireOnIndexChange(IIIII)V
    .locals 10
    .param p1, "newSelStart"    # I
    .param p2, "newSelEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I
    .param p5, "reason"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSubstringBeforeCursor()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 168
    .local v5, "textBeforeTheCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-static {p1, p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->createCursorPositionFromRange(II)Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v2

    .line 170
    .local v2, "position":Lcom/sonyericsson/ned/controller/CursorPosition;
    invoke-static {p3, p4}, Lcom/sonyericsson/ned/controller/CursorPosition;->createCursorPositionFromRange(II)Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    .line 172
    .local v3, "composing":Lcom/sonyericsson/ned/controller/CursorPosition;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    array-length v9, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 173
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v4, p5

    move v6, p1

    .line 174
    invoke-interface/range {v0 .. v6}, Lcom/sonyericsson/ned/controller/ICursorListener;->onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V

    .line 172
    :cond_0
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 179
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    .end local v2    # "position":Lcom/sonyericsson/ned/controller/CursorPosition;
    .end local v3    # "composing":Lcom/sonyericsson/ned/controller/CursorPosition;
    .end local v5    # "textBeforeTheCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return-void
.end method

.method private fireOnInputViewFinish()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    if-eqz v1, :cond_1

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 251
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;->onInputViewFinished()V

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;
    :cond_1
    return-void
.end method

.method private fireOnInputViewStart()V
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    if-eqz v1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 241
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;->onInputViewStarted()V

    .line 240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;
    :cond_1
    return-void
.end method

.method private fireOnNewCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 221
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;->onNewCompletions(Ljava/lang/Object;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;
    :cond_1
    return-void
.end method

.method private fireOnUpdateInputView()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    if-eqz v1, :cond_1

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 231
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/controller/ICursorListener;->onUpdateInputView(Ljava/lang/Object;)V

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    :cond_1
    return-void
.end method

.method private fireOnUpdateSelection(IIIIII)V
    .locals 11
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    if-eqz v1, :cond_1

    .line 209
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    array-length v10, v9

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v0, v9, v8

    .line 210
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ISelectionListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 211
    invoke-interface/range {v0 .. v7}, Lcom/sonyericsson/ned/controller/ISelectionListener;->onUpdateSelection(Ljava/lang/Object;IIIIII)V

    .line 209
    :cond_0
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 216
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ISelectionListener;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    return-object v0
.end method

.method private getSubstringAdjacentToCursor(IZ)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p1, "nbrCharacters"    # I
    .param p2, "beforeCursor"    # Z

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 188
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 189
    .local v1, "result":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 191
    if-eqz p2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 202
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v1

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getSubstringBeforeCursor()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2

    .prologue
    .line 182
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSubstringAdjacentToCursor(IZ)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method private handleChangedDebugMode()V
    .locals 2

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 445
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    .line 446
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 447
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInputView(Landroid/view/View;)V

    .line 450
    :cond_0
    return-void
.end method

.method public static removeExternalFactories()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    return-void
.end method

.method public static removeExternalRequirements()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    return-void
.end method

.method private static reportBindProblem(Ljava/lang/String;)V
    .locals 1
    .param p0, "problem"    # Ljava/lang/String;

    .prologue
    .line 480
    new-instance v0, Ljava/net/BindException;

    invoke-direct {v0, p0}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 481
    return-void
.end method

.method private static setInstance(Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;)V
    .locals 0
    .param p0, "instance"    # Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    .prologue
    .line 142
    sput-object p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    .line 143
    return-void
.end method

.method private unbind(Z)V
    .locals 3
    .param p1, "rebind"    # Z

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 583
    const-string v0, "Unbind not on main thread"

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 586
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    if-eqz v0, :cond_2

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbind when mIsBinding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsUnbinding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 591
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    if-eqz v0, :cond_3

    .line 594
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/collaboration/ObjectBinder;->dispose(Z)V

    .line 595
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 596
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 597
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    .line 598
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 599
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    .line 600
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    .line 603
    :cond_3
    if-nez p1, :cond_4

    .line 604
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 605
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    .line 608
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    .line 609
    return-void
.end method


# virtual methods
.method public addOnDestroyListener(Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;)V
    .locals 1
    .param p1, "onDestroyListener"    # Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;

    .prologue
    .line 935
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_0
    return-void
.end method

.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 714
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/ICursorListener;

    if-ne p2, v0, :cond_0

    .line 715
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/ICursorListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 716
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 732
    :goto_0
    return-object v0

    .line 717
    :cond_0
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    if-ne p2, v0, :cond_1

    .line 718
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    .line 719
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    goto :goto_0

    .line 720
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    if-ne p2, v0, :cond_2

    .line 721
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    goto :goto_0

    .line 723
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    if-ne p2, v0, :cond_3

    .line 724
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    .line 725
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    goto :goto_0

    .line 726
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/ISelectionListener;

    if-ne p2, v0, :cond_4

    .line 727
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/ISelectionListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    .line 728
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    goto :goto_0

    .line 732
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 737
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-ne p2, v0, :cond_1

    .line 738
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 742
    :cond_0
    :goto_0
    return-void

    .line 739
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    if-ne p2, v0, :cond_0

    .line 740
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 702
    return-object p0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 973
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getExtractEditText()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 746
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1000
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public isExtractViewShown()Z
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    return v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 1018
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 870
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    if-nez v0, :cond_0

    .line 871
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 875
    :goto_0
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 686
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 694
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 695
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 698
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 699
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 263
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsDirectBootLocked:Z

    .line 267
    :cond_0
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setTheme(I)V

    .line 268
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 270
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    .line 271
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 273
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 274
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mConfiguration:Landroid/content/res/Configuration;

    .line 277
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->init(Landroid/content/Context;)V

    .line 284
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 286
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 287
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 286
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 291
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 471
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 2

    .prologue
    .line 355
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v0

    .line 356
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/ExtractEditText;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 357
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 313
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 882
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 883
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;

    .line 884
    .local v0, "onDestroyListener":Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 886
    .end local v0    # "onDestroyListener":Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->getOriginalHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 887
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->dispose()V

    .line 888
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 889
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    .line 890
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 797
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 798
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnNewCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 800
    :cond_0
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/high16 v4, 0x2000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 621
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v1

    .line 629
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 647
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    .line 648
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_0

    .line 656
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 668
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 678
    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 4
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 908
    const-string v3, "rebind"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    .line 909
    .local v0, "rebind":Z
    if-nez v0, :cond_0

    const-string v3, "reinitialize"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 910
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 911
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    .line 912
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->bind(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 914
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 915
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 922
    :cond_2
    :goto_0
    return v1

    .line 918
    :cond_3
    const-string v3, "unbind"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 919
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 922
    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    .prologue
    .line 710
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 457
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 458
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewFinish()V

    .line 459
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 460
    return-void
.end method

.method public onInitializeInterface()V
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 299
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 302
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 303
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 831
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 832
    invoke-interface {v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;->onPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 834
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 835
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .end local v0    # "handled":Z
    :cond_3
    move v0, v1

    .line 832
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 808
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 809
    invoke-interface {v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;->onRelease(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 811
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    const/4 v0, 0x1

    .line 822
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .end local v0    # "result":Z
    :cond_3
    move v0, v2

    .line 809
    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 927
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 365
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsDirectBootLocked:Z

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 366
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 367
    .local v1, "manager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsDirectBootLocked:Z

    .line 374
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 378
    .end local v1    # "manager":Landroid/os/UserManager;
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 379
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v2

    .line 380
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 378
    invoke-static {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    .line 386
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->handleChangedDebugMode()V

    .line 400
    if-eqz p1, :cond_1

    const-string v2, "com.google.android.googlequicksearchbox"

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 401
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 440
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v2, "onStartInputView"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 408
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvaluateFullscreenMode()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 409
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInputView(Landroid/view/View;)V

    .line 412
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 413
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 414
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 415
    if-eqz p1, :cond_4

    .line 422
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 423
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .line 424
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 425
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_3

    .line 426
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    .line 429
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->bind(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 436
    .end local v0    # "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->onStartInputView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 438
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 433
    :cond_4
    :try_start_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->TAG:Ljava/lang/String;

    const-string v3, "EditorInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onUnbindInput()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 860
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 861
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 862
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 783
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 787
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 788
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 752
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 755
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 767
    const/4 v6, 0x0

    .line 769
    .local v6, "wasManualMovement":Z
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->isExpectedUpdate(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const/4 v6, 0x1

    .line 774
    :cond_0
    if-eqz v6, :cond_1

    const/4 v5, 0x3

    :goto_0
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnIndexChange(IIIII)V

    .line 777
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnUpdateSelection(IIIIII)V

    .line 779
    return-void

    .line 774
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onWindowShown()V
    .locals 2

    .prologue
    .line 953
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 954
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 955
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 956
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsSnapshot()V

    .line 958
    :cond_0
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 1
    .param p1, "fromEnterKey"    # Z

    .prologue
    .line 982
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    return v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .param p1, "keycode"    # I

    .prologue
    .line 964
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 965
    return-void
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 991
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->switchInputMethod(Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public updateFullscreenMode()V
    .locals 0

    .prologue
    .line 945
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 946
    return-void
.end method

.method public updateInputViewShown()V
    .locals 0

    .prologue
    .line 894
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnUpdateInputView()V

    .line 898
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 899
    return-void
.end method
