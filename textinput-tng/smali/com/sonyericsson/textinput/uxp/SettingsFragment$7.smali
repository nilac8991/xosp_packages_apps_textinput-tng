.class Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/textinput/uxp/SettingsFragment;->setupNumericKeys(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 327
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    # getter for: Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    # getter for: Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$100(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;->this$0:Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    # getter for: Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v0

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNumericRowEnabledEvent(Z)V

    .line 334
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
