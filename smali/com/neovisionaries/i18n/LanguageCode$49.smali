.class final enum Lcom/neovisionaries/i18n/LanguageCode$49;
.super Lcom/neovisionaries/i18n/LanguageCode;
.source "LanguageCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neovisionaries/i18n/LanguageCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/neovisionaries/i18n/LanguageCode;-><init>(Ljava/lang/String;ILcom/neovisionaries/i18n/LanguageCode$1;)V

    return-void
.end method


# virtual methods
.method public getAlpha3()Lcom/neovisionaries/i18n/LanguageAlpha3Code;
    .locals 1

    .prologue
    .line 720
    sget-object v0, Lcom/neovisionaries/i18n/LanguageAlpha3Code;->fra:Lcom/neovisionaries/i18n/LanguageAlpha3Code;

    return-object v0
.end method

.method public toLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 726
    sget-object v0, Ljava/util/Locale;->FRENCH:Ljava/util/Locale;

    return-object v0
.end method
