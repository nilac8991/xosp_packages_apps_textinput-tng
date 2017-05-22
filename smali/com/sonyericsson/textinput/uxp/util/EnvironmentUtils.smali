.class public final Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils$AccentColorResourceIdentifier;
    }
.end annotation


# static fields
.field private static final ACCENT_BRIGHTNESS_THRESHOLD:F = 0.6f

.field private static final CTA_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cta"

.field private static final DEBUG:Z = false

.field private static final GMAIL_READER_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.gmailreaderservice"

.field public static final GOOGLE_VOICE_INPUT_ID:Ljava/lang/String; = "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

.field public static final HANDWRITING_INPUT_ID:Ljava/lang/String; = "com.sonymobile.android.handwriting/.HandwritingInputMethodService"

.field public static final ONE_MEGA_BYTE:I = 0x100000

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ORIENTATION_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final SMALLEST_LARGE_PHONE_WIDTH_DENSITY:I = 0x168

.field private static final SMALLEST_LARGE_TABLET_WIDTH_DENSITY:I = 0x2d0

.field private static final SMALLEST_PHONE_TABLET_WIDTH_DENSITY:I = 0x1e0

.field private static final SMALLEST_TABLET_WIDTH_DENSITY:I = 0x258

.field private static final TAG:Ljava/lang/String;

.field private static sIsFlagEmojiSupported:Ljava/lang/Boolean;

.field private static sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

.field private static sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

.field private static sIsZwjSequencesSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->TAG:Ljava/lang/String;

    .line 69
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    .line 70
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    .line 71
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    .line 72
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static allowedToConnectToNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 482
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isChineseMarketDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static allowedToLearnWritingStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 329
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isChineseMarketDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGmailReaderService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAccentColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, "accentColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "color"

    const-string v5, "com.sonyericsson.uxp"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "colorResId":I
    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/high16 v4, -0x1000000

    if-ne v0, v4, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 93
    .local v3, "useDefaultColor":Z
    :goto_1
    if-eqz v3, :cond_2

    const v4, 0x7f0d0001

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .end local v0    # "accentColor":I
    :cond_2
    return v0

    .line 92
    .end local v3    # "useDefaultColor":Z
    .restart local v0    # "accentColor":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getAvailableRamMegs(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 536
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string v2, "activity"

    .line 537
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 538
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 540
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private static getBrightnessSafeAccentColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAccentColor"    # I

    .prologue
    .line 578
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 579
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 580
    const/4 v1, 0x2

    aget v1, v0, v1

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 582
    const/high16 v1, 0x7f0d0000

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 584
    .end local p1    # "themeAccentColor":I
    :cond_0
    return p1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 573
    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    .line 574
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getColorPrimary(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 551
    const v0, 0x1010433

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorPrimaryDark(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 562
    const v0, 0x1010434

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    const/4 v0, 0x0

    .line 498
    .local v0, "currentVersion":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 499
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return v0

    .line 500
    :catch_0
    move-exception v1

    .line 501
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDarkAccentColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    const-string v1, "somc_theme_accent_color_light"

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getAccentColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 284
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getLightAccentColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    const-string v1, "somc_theme_accent_color_dark"

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getAccentColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method private static getMaterialDesignColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributeColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 595
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p1, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 599
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 600
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 602
    if-nez v0, :cond_0

    .line 605
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 359
    const-string v0, "unknown"

    .line 363
    .local v0, "orientation":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 351
    .end local v0    # "orientation":Ljava/lang/String;
    :pswitch_0
    const-string v0, "landscape"

    .line 352
    .restart local v0    # "orientation":Ljava/lang/String;
    goto :goto_0

    .line 355
    .end local v0    # "orientation":Ljava/lang/String;
    :pswitch_1
    const-string v0, "portrait"

    .line 356
    .restart local v0    # "orientation":Ljava/lang/String;
    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method private static hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v2, "input_method"

    .line 236
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 237
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 238
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    const/4 v2, 0x1

    .line 242
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasGmailReaderService(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    const-string v0, "com.sonymobile.gmailreaderservice"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasInstalledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasHandwritingInput(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const-string v0, "com.sonymobile.android.handwriting/.HandwritingInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasInstalledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v2, "input_method"

    .line 255
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 257
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const/4 v2, 0x1

    .line 261
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasNetworkConnection(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    const-string v2, "connectivity"

    .line 457
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 458
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 459
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasSENAccount(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 513
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sony.snei.np.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSmsCapabilities(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 524
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 525
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    return v1
.end method

.method public static hasVoiceInputEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 273
    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasWifiConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 469
    const-string v3, "connectivity"

    .line 470
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 471
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 472
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAppTargetPriorJellybean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 609
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 610
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 612
    .local v2, "targetSdkVersion":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isChineseMarketDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 296
    const-string v0, "com.sonymobile.cta"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupporting12Key(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSupportingFloatingKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 434
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    .line 435
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 394
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 409
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 410
    .local v0, "smallestWidthDp":I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 200
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 212
    .local v0, "manager":Landroid/os/UserManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootUnlocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 223
    .local v0, "manager":Landroid/os/UserManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFlagEmojiSupported()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 672
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 673
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 674
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "\ud83c\udde8"

    .line 675
    .local v1, "regionalIndicatorSymbolC":Ljava/lang/String;
    const-string v2, "\ud83c\udded"

    .line 676
    .local v2, "regionalIndicatorSymbolH":Ljava/lang/String;
    const-string v3, "\ud83c\udde8\ud83c\udded"

    .line 677
    .local v3, "switzerlandFlag":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 678
    const-string v4, "\ud83c\udde8\ud83c\udded"

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    .line 684
    :cond_0
    :goto_0
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 680
    :cond_1
    const-string v4, "\ud83c\udde8\ud83c\udded"

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3fa00000    # 1.25f

    const-string v6, "\ud83c\udde8"

    .line 681
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v4, 0x1

    .line 680
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    goto :goto_0

    .line 681
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 367
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLargeTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRtl(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipopOrNewer()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    const-class v2, Landroid/os/Build$VERSION_CODES;

    const-string v3, "LOLLIPOP"

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 162
    .local v1, "versionField":Ljava/lang/reflect/Field;
    invoke-static {v4, v4, v1}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    .local v0, "version":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMarshmallowOrNewer()Z
    .locals 2

    .prologue
    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNougatOrNewer()Z
    .locals 2

    .prologue
    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 306
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 308
    const/4 v1, 0x1

    .line 313
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, "smallestScreenWidthDp":I
    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 371
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 317
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 318
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 319
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 320
    .local v0, "restrictions":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 325
    .end local v0    # "restrictions":Landroid/os/Bundle;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return v2

    .line 323
    .restart local v0    # "restrictions":Landroid/os/Bundle;
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_1
    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSmallTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 117
    .local v0, "smallestWidthDp":I
    const/16 v1, 0x258

    if-gt v1, v0, :cond_0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicode8EmojiSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 627
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 629
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83e\uddc0"

    .line 630
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 629
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    .line 632
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 630
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicode9EmojiSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 642
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 644
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83e\udd23"

    .line 645
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 644
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    .line 647
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 645
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZwjSequencesSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 657
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 659
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    .line 660
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 659
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    .line 662
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 660
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
